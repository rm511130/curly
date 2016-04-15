#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

int main (int argc, char *argv[])
{
  int c=0;
  char curl_command[1000];

  if (argc < 3) { fprintf(stderr, "syntax: ./curly http://stress.this.url <# of times>\n");
                  exit(-1);
                };

  if (!isdigit(*argv[2])) { fprintf(stderr, "syntax: ./curly http://stress.this.url <number of times>\n"); 
                            exit(-1);
                          } 

  c = atoi(argv[2]);

  printf("Using curl on %s for %d rapid iterations\n",argv[1],c);

  sprintf(curl_command,"curl %s > /dev/null",argv[1]);

  do { system(curl_command); }  while (c-- > 0); 

 return 0;
}

