#include <string.h>
#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>


int is_palindrome(const char* str) {
    int len = strlen(str);
    int left = 0;
    int right = len - 1;

    while (left < right) {
        if (!isalnum(str[left])) {
            left++;
            continue;
        }
        if (!isalnum(str[right])) {
            right--;
            continue;
        }
        if (tolower(str[left]) != tolower(str[right])) {
            return 0;
        }
        left++;
        right--;
    }

    return 1;
}


int main() {
    char input[100];
    printf("Enter a string: ");
    scanf("%[^\n]%*c", input);

    if (is_palindrome(input)) {
        printf("The string is a palindrome.\n");
    } else {
        printf("The string is not a palindrome.\n");
    }

    return 0;
}
