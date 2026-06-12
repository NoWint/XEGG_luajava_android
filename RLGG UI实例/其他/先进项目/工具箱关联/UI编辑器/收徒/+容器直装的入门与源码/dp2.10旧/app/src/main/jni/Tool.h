#include "Offset.h"
#include <stdio.h>
#include <malloc.h>
#include <jni.h>
#include <pthread.h>
#include <dirent.h>
#include <math.h>
#include <sys/socket.h>
#include <stdbool.h>
#define PI 3.1415926
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>
#include <dirent.h>
#include <pthread.h>
#include <sys/socket.h>
#include <malloc.h>
#include <math.h>
#include <sys/stat.h>
#include <errno.h>
#include <netdb.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <string.h>
int countmax;
int playergetthis;
int pid = -1;
int handle;
pthread_t Circuit;
pthread_t Circuit2;
pthread_t MContext;
pthread_t Mod;
pthread_t Mod1;
pthread_t YInf;
pthread_t Pla;
float maxmotion(float motion)
{
	float motionvalue;
	if (motion > 1 || motion < -1)
	{
		if (motion > 0)
		{
			motionvalue = 1;
		}
		if (motion < 0)
		{
			motionvalue = -1;
		}
	}
	else
	{
		motionvalue = motion;
	}
	return motionvalue;
}
struct MAPS
{
	long int startAddr;
	long int endAddr;
	struct MAPS *next;
};
unsigned long base;
unsigned long so;
typedef struct MAPS *PMAPS;
typedef int COUNT;
typedef long int OFFSET;
int ResCount = 0;
#define LEN sizeof(struct MAPS)
PMAPS Res = NULL;
int getPID()
{
	int id = -1;
	DIR *dir = 0;
	FILE *file = 0;
	char filename[32] = { 0 };
	char cmdline[256] = { 0 };
	struct dirent *entry = 0;
	dir = opendir("/proc");
	if (dir == NULL)
	{
		return -1;
	}
	while ((entry = readdir(dir)) != NULL)
	{
		id = atoi(entry->d_name);
		if (id > 0)
		{
			sprintf(filename, "/proc/%d/cmdline", id);
			file = fopen(filename, "r");
			if (file)
			{
				fgets(cmdline, sizeof(cmdline), file);
				fclose(file);
				if (strcmp("com.netease.x19", cmdline) == 0)
				{
					pid = id;
					break;
				}
			}
		}
	}
	closedir(dir);
	return pid;
}

long long int getBssModuleBase()
{
	FILE *fp;
	int cnt = 0;
	long start;
	char tmp[256];
	fp = NULL;
	char line[1024];
	char fname[128];
	sprintf(fname, "/proc/%d/maps", pid);
	fp = fopen(fname, "r");
	while (!feof(fp))
	{
		fgets(tmp, 256, fp);
		if (cnt == 1)
		{
			if (strstr(tmp, "[anon:.bss]") != NULL)
			{
				sscanf(tmp, "%lx-%*lx", &start);
				break;
			}
			else
			{
				cnt = 0;
			}
		}
		if (strstr(tmp, "libminecraftpe.so") != NULL)
		{
			cnt = 1;
		}
	}
	base = start;
	return base;
}

long long int getBssModuleSo()
{
	FILE *fp;
	long start;
	char tmp[256];
	fp = NULL;
	char line[1024];
	char fname[128];
	sprintf(fname, "/proc/%d/maps", pid);
	fp = fopen(fname, "r");
	while (!feof(fp))
	{
		fgets(tmp, 256, fp);
		if (strstr(tmp, "libminecraftpe.so") != NULL)
		{
			sscanf(tmp, "%lx-%*lx", &start);
			break;
		}
	}
	so = start;
	return so;
}

void injectModule()
{
	FILE *fp;
	char lj[64];
	sprintf(lj, "/proc/%d/mem", getPID());
	handle = open(lj, O_RDWR);
	lseek(handle, 0, SEEK_SET);
	getBssModuleBase();
	getBssModuleSo();
	while (true)
	{
		if (base < 0L)
		{
			getBssModuleBase();
			getBssModuleSo();
		}
		if (base == 0L)
		{
			getBssModuleBase();
			getBssModuleSo();
		}
		if (base > 0L)
		{
			break;
		}
	}
}
int setDword(long int addr, int value)
{
	pwrite64(handle, &value, 4, addr);
	return 0;
}
float setFloat(long int addr, float value)
{
	pwrite64(handle, &value, 4, addr);
	return 0;
}
int8_t setByte(long int addr, int value)
{
	pwrite64(handle, &value, 1, addr);
	return 0;
}
float getFloat(long int addr)
{
	float var = 0;
	pread64(handle, &var, 4, addr);
	return var;
}
int getDword(long int addr)
{
	int var = 0;
	pread64(handle, &var, 4, addr);
	return var;
}
int8_t getByte(long int addr)
{
	int var = 0;
	pread64(handle, &var, 4, addr);
	return var;
}
long int lsp(long int addr)
{
	long int var = 0;
	pread64(handle, &var, 8, addr);
	return var;
}

int Min(int arr[], int size) {
    int min = arr[0]; 
    int i;
    for (i = 1; i < size; ++i) {
        if (arr[i] < min) {
            min = arr[i];
        }
    }
    return min;
}
