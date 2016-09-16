/* Curly sends HTTP GET requests to a given URL every so many seconds: e.g. curly cnn.com 2 10 
   In this example Curly will hit cnn.com every 2s for 10 iterations
   rmeira@pivotal.io version 1.1 16-Sept-2016                                                   */ 

#include <stdio.h>
#include <stdlib.h> 
#include <ctype.h> 
#include <unistd.h>

int main (int argc, char *argv[])
{
  int c=10,s=3;
  char curl_command[1000];
  switch (argc) { case 1: fprintf(stderr, "syntax: ./curly http://stress.this.url <every #seconds, default:3 > <# iterations, default:10 >\n"); exit(-1); 
                  case 4: if (isdigit(*argv[3])) c=atoi(argv[3]);  
                  case 3: if (isdigit(*argv[2])) s=atoi(argv[2]);  
                };
  printf("Using curl on %s every %d seconds for %d iterations\n",argv[1],s,c);
  sprintf(curl_command,"curl %s > /dev/null",argv[1]);
  do { sleep(s); system(curl_command); } while (--c); 
  return 0;
}

