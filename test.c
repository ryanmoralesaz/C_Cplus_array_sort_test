#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int compare(const void *a, const void *b) {
    return strcmp(*(const char **)a, *(const char **)b);
}

int main() {
    char *names[] = {"John", "Bill", "Charlie", "Anna"};
    int n = sizeof(names) / sizeof(names[0]);

    qsort(names, n, sizeof(char *), compare);

    for (int i = 0; i < n; i++) {
        printf("%s\n", names[i]);
    }

    return 0;
}