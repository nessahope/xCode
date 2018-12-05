//----------Blocks AND Lambdas----------
#import <Foundation/Foundation.h>

void f(int a){
    printf("%d\n", a);
}

//lambda = ^, set of your args (if void in second () that means no arg) -----DEFINING A LAMBDA-----
void (^lf)(void) = ^ {
    printf("I'm a Block(lambda)");
};
//block without args
void (^llf)(void) = ^{
    NSLog(@"Block without args");
};

//passing with an arg(int) is the arg. We define the arg after the equals sign (int a)
//ex void (^bf)(int, int) = ^(int a, int b) {   };
void (^bf)(int) = ^(int a) {
    printf("I'm a Block(lambda)! a is %d", a);
};
//because it's returning an int there has to be a return statment
int (^add)(int, int) = ^(int a, int b) {
    return a+b;;
};

//--------------------------------Classes------------------------------
@interface MyClass : NSObject
//simple method, not a lambda
-(void)myMethod:(int)a;
//name of lambda is argBlock, returns void, returns int as arg, or void
-(void)myBlockMethod:(void (^)(void))argBlock;
-(void)getTwoNumbersAndDoSomething:(void (^)(int num1, int num2))smth;
-(int)midBehaviour:(int(^)(int a, int b))mid;
@end

@implementation MyClass
//simple method, not a lambda
-(void)myMethod:(int)a{
    NSLog(@"%d",a);
}
//defining a method that receives a block as an arg. argBlock is the name that comes after the definition
-(void)myBlockMethod:(void (^)(void))argBlock{
    NSLog(@"Inside myBlock method");
    argBlock();
}

//the numbers that we pass here and defined in the main when we initize it. BECAUSE it is a block of code
-(void)getTwoNumbersAndDoSomething:(void (^)(int num1, int num2))smth{
    int a, b;
    scanf("%d", &a);
    scanf("%d", &b);
    smth(a, b);
}

-(int)midBehaviour:(int(^)(int a, int b))mid{
    int num1 = 256, num2 = 128;
    int result = mid(num1, num2);
    return result;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//you can pass around lambdas
        f(10);
        lf();
        bf(add(20, 30));
        ////////////
        MyClass *mc =[[MyClass alloc]init];
        [mc myMethod:100];
        //this is inside block. Passing a block
        [mc myBlockMethod:^{
            NSLog(@"Foo!");
        }];
        
//----------just by chnaging the block you can manipulate how it reacts--------------------
        //there are two sets of args being passed
        [mc getTwoNumbersAndDoSomething:^(int num1, int num2){
            printf("%d, %d", num1, num2);
        }];
        [mc getTwoNumbersAndDoSomething:^(int num1, int num2){
            printf("%d", num1 + num2);
        }];
        [mc getTwoNumbersAndDoSomething:^(int num1, int num2){
            printf("%d", num1 - num2);
        }];
//-----------------------------------------------------------------------------------------
        
        int result1 =[mc midBehaviour:^(int a, int b){
            return a + b;
        }];
        
        int result2 = [mc midBehaviour:^(int a, int b){
            return a - b;
        }];
        NSLog(@"%d", result1);
        NSLog(@"%d", result2);
    }
    return 0;
}
