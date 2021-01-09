#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

int main(){
	printf(1,"Total Number of Active Process: %d\n",get_num_proc());
	exit();
}
