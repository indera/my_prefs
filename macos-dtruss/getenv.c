#include <stdlib.h>
#include <stdio.h>
 
int main() {
    puts("Before retrieving the variable");
    const char *s = getenv("FOO");
    puts(s ? s : "Env variable not found");
}
 

