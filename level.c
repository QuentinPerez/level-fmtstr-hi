/* gcc -o level level.c */

#include <stdio.h>
#include <unistd.h>

int main(int argc, char **argv) {
  FILE *passwd = fopen("/home/super-boddy/.passwd", "rt");
  char buffer[32];
  fgets(buffer, sizeof(buffer), passwd);
  printf(argv[1]);
  fclose(passwd);
  return 0;
}
