#include "types.h"
#include "stat.h"
#include "processInfo.h"
#include "user.h"
#include "fcntl.h"

int main(){

	struct processInfo psinfo;
	struct processInfo* st=&psinfo;
	int pid;

	printf(1,"PID  PPID  SIZE  Number of Context Switch\n");
	for(pid=1;pid<=get_max_pid();pid++)
	{
		if(get_proc_info(pid,st)<0)
		{
			continue;
		}
		else
		{
			printf(1,"%d    %d     %d   %d\n",pid,st->ppid,st->psize,st->numberContextSwitches);

		}
	}
	exit();
}
