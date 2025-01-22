#include <stdio.h>  // For printf
#include <stdlib.h> // For return code
#include <fcntl.h>
#include <unistd.h>
#include <syslog.h>
#include <string.h>
#include <errno.h>

int main(int argc, char *argv[]) 
{
    openlog("writer", LOG_PID | LOG_CONS, LOG_USER);

    // Step 1: Check the number of arguments
    if (argc != 3) { // argc must be 3: program name + 2 argumens
	closelog();
        printf("Error: Exactly two arguments are required.\n");
        return 1; // Return 1 to indicate an error
    }
    int fd = open(argv[1],O_WRONLY | O_CREAT | O_TRUNC,0644);
    if (fd == -1)
    {
	   syslog(LOG_ERR,"failed to open file path %s %s",argv[1],strerror(errno));
	   closelog();
	   return 1;
    }
    ssize_t buffer_written =  write(fd,argv[2],strlen(argv[2]));
    if(buffer_written == -1)
    {
     syslog(LOG_ERR,"Couldn't write to the file %s %s",argv[2],strerror(errno));
     close(fd);
     closelog();
    }
    // If the correct number of arguments is provided
    printf("Arguments received:%s %s and %s\n", argv[0],argv[1], argv[2]);
    return 0; // Return 0 to indicate success
}
