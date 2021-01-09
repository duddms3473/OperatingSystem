#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define MAX_INPUT_SIZE 1024
#define MAX_TOKEN_SIZE 64
#define MAX_NUM_TOKENS 64

/* Splits the string by space and returns the array of tokens
*
*/
int pipe_use=0; //pipe 유무 판단을 위해, 1이면 파이프사용, 아니면 0
int com;
char ***tokenize(char *line){
	   char ***command=(char ***)malloc(MAX_NUM_TOKENS * sizeof(char **));
	   char **tokens = (char **)malloc(MAX_NUM_TOKENS * sizeof(char *));
	   char *token = (char *)malloc(MAX_TOKEN_SIZE * sizeof(char));
	   int i,j, tokenIndex = 0, tokenNo = 0,commandIndex=0;

	   for(i =0; i < strlen(line); i++){
			 char readChar = line[i];
			 if(readChar=='|'){
				    pipe_use=1;
				    i++;
				    tokens[tokenNo]='\0';
				    command[commandIndex]=(char **)malloc(MAX_TOKEN_SIZE*sizeof(char*));
				    for(j=0;j<tokenNo;j++){
						  command[commandIndex][j]=(char *)malloc(MAX_TOKEN_SIZE*sizeof(char));
						  strcpy(command[commandIndex][j],tokens[j]);
				    }
				    commandIndex++;
				    tokenNo=0;
			 }
			 else if (readChar == ' ' || readChar == '\n' || readChar == '\t'){
				    token[tokenIndex] = '\0';
				    tokens[tokenNo] = (char*)malloc(MAX_TOKEN_SIZE*sizeof(char));
				    strcpy(tokens[tokenNo++], token);
				    tokenIndex = 0; 
			 }
			 else{
				    token[tokenIndex++] = readChar;
			 }
	   }
	   if(pipe_use==0)
	   {
			 tokens[tokenNo]='\0';
			 command[0]=(char **)malloc(MAX_TOKEN_SIZE*sizeof(char*));
			 for(i=0;i<tokenNo;i++){
			 	command[0][i]=(char *)malloc(MAX_TOKEN_SIZE*sizeof(char));
			 	strcpy(command[0][i],tokens[i]);
			 }
			 command[++commandIndex]=NULL;
	   }
	   if (pipe_use==1){
			 tokens[tokenNo]='\0';
			 command[commandIndex]=(char **)malloc(MAX_TOKEN_SIZE*sizeof(char *));
			 for(j=0;j<tokenNo;j++){
				    command[commandIndex][j]=(char *)malloc(MAX_TOKEN_SIZE*sizeof(char));
				    strcpy(command[commandIndex][j],tokens[j]);
			 }
			 command[++commandIndex]=NULL;
	   }
	   free(token);
	   tokens[tokenNo]=NULL;
	   for(i=0;i<tokenNo;i++)
		   free(tokens[i]);
	   com=commandIndex;
	   return command;
}


int main(int argc, char* argv[]) {
	char  line[MAX_INPUT_SIZE];            
	char ***command;	
	int i,j;
	int pid; //자식,부모,fork실패 여부 판단을 위해
	int child_pid;//자식프로세스 pid 저장
	int status;//자식프로세스의 상태 저장을 위해 사용
	int fd[2];
	int fd_in=0;


	FILE* fp;
	if(argc == 2) {
		fp = fopen(argv[1],"r");
		if(fp < 0) {
			printf("File doesn't exists.");
			return -1;
		}
	}

	while(1) {			
		/* BEGIN: TAKING INPUT */
		bzero(line, sizeof(line));
		if(argc == 2) { // batch mode
			if(fgets(line, sizeof(line), fp) == NULL) { // file reading finished
				break;	
			}
			line[strlen(line) - 1] = '\0';
		} else { // interactive mode
			printf("$ ");
			scanf("%[^\n]", line);
			getchar();

			if(strcmp(line,"")==0) continue;//엔터를 입력받았을 경우		
		}

		line[strlen(line)] = '\n'; //terminate with new line
		command = tokenize(line);
		

		//pipe 유무 판단
		if(pipe_use==0){
		//fork와 exec 실행 
			pid=fork();
			if(pid==0){
				child_pid=getpid();
				if(execvp(command[0][0],command[0])<0){
					printf("SSUShell : Incorrect command\n");
				}
			
				exit(0);
			}

			else if(pid<0)
			{
				printf("fork error\n");
			}
			else
			{
				wait(&status);
			}
		}
		else //pipe 사용하는 명령어
		{
			for(i=0;i<com;i++)
			{
				pipe(fd);
				pid=fork();

				if(pid==0){
					dup2(fd_in,0);
					if((i+1)!=com)
						dup2(fd[1],1);
					close(fd[0]);
					execvp(command[i][0],command[i]);

					exit(EXIT_FAILURE);
				}
				else if(pid>0){
					wait(NULL);
					close(fd[1]);
					fd_in=fd[0];
				}
			}
		}

		// Freeing the allocated memory	
		for(i=0;command[i]!=NULL;i++){
			for(j=0;command[i][j]!=NULL;j++){
				free(command[i][j]);
			}
			free(command[i]);
		}
		free(command);

		pipe_use=0;
	}
	return 0;
}



