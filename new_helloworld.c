#include <stdio.h>

enum calculator
{
    add = 1,
    subt,
    mul,
    divi
};
int sum(int, int);
int sub(int, int);
int multi(int, int);
float div(int, int);

float main()
{
    printf("Hello World\n");
    int a, b, result;
    printf("Enter first number\n");
    scanf("%d", &a);
    printf("Enter second number\n");
    scanf("%d", &b);
    printf("For add press 1\n For sub press 2\n For mul press 3\n For Div press 4\n");
    scanf("%d", &result);

    // Addition
    if(result == add)
    {
    int mysum = sum(a, b);
    printf("mysum = %d\n", mysum);
    }

    //Subtraction
    else if(result == subt)
    {
        int mysub = sub(a, b);
        printf("mysub = %d\n", mysub);
    }
    
    // Multiplication
    else if(result == mul)
    {
    int mymul = multi(a, b);
    printf("mymul = %d\n", mymul);
    }

    // Division
    else if(result ==divi)
    {
    if(b==0)
    {
        printf("Invalid input\n");
   
    }    
    else
    {
    float mydiv = div(a, b);
    printf("mydiv = %f\n", mydiv);
    }
    }
    else
    {
        printf("Please enter the valid number\n");
    }

    return 0;
}

