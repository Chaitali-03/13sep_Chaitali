//WAP to find factorial using recursion
#include<stdio.h>
int fact(int);
void main()
{
    int n,f;

    printf("enter any number =");
    scanf("%d",&n);

    f =fact(n);
    printf("facorial = %d",f);
}
int fact(int n)
{
    if(n==0)
        return 1;
    else if(n==1)
        return 1;
    else
        return n*fact(n-1);
}
