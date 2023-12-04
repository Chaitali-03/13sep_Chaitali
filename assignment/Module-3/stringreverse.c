// WAP to reverse a string and check that the string is palindrome or not
#include <stdio.h>
#include <string.h>
void main()
{
    char str[100];
    int i, j, len;

    printf("Enter a string: ");
    scanf("%s", str);

    len = strlen(str);

    for (i = 0, j = len - 1; i < j; i++, j--)
    {
        char temp = str[i];
        str[i] = str[j];
        str[j] = temp;
    }

    printf("Reversed string: %s\n", str);

    if (strcmp(str, str) == 0)
    {
        printf("The string is a palindrome.\n");
    }
    else
    {
        printf("The string is not a palindrome.\n");
    }
}