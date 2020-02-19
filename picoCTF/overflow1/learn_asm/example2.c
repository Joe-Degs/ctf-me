#include <string.h>

void function(char *str) {
  char buf[5];

  strcpy(buf, str);
}

void main() {
  char large_string[256];
  int i;

  for(i = 0; i < 255; i++) {
    large_string[i] = 'A';
  }

  function(large_string);
}
