
#import <Foundation/Foundation.h>

int fibo(int n){
    //Declare array to store the fibonacci numbers
    // 1 extra to for n = 0
    int f[n+2];
    int i;
    
    // 0 and 1st number of the series are 0 and 1. We have to declare the first two because our function will need to evaluate
    f[0] = 0;
    f[1] = 1;
    
    for (i = 2; i <= n; i++){
        // Add the previous 2 numbers in the series and store it
        f[i] = f[i-1] + f[i-2];
    }
    return f[n];
}

//-------------------------WITH TEACHER-----------------------------
//ITERATIVE
int fibo_itr(int f[]){
    if( n <= 2)
        return f[n-1];
    for (int i = 3; i <= n; i++){
        f[i] = f[i-1] + f[i-2];
    }
    return f[n-1];
}

//RECURSIVE
int fib_rec(int n){
    if (n <= 2)
        return 1;
    return fib_rec(n-1) + fib_rec(n-2);
}

//DYNAMIC programming of recursive fibonacci
//there is a flaw in dynamic programming: memory space
int fibo_dp(int n, NSMutableArray* mem){
    if ( n <= [mem count])
        return [[mem objectAtIndex:n-1] intValue];
    int tmp = fibo_dp(n -1, mem) + fibo_dp(n-2, mem);
    [mem addObject:[NSNumber numberWithInt:tmp]];
    return tmp;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
            int n = 9;
            printf("%d", fibo(n));
            getchar();
        return 0;
    }
    
    int fib[50];
    fib[0] = 1;
    fib[1] = 1;
    
    NSMutableArray* mem = [[NSMutableArray alloc]init];
    [mem addObject:@(1)];
    [mem addObject:@(1)];
    
    NSDate *start = [NSDate date];
    NSLog(@"%d", fibo_dp(34, mem));
    NSDate *end = [NSDate date];
    NSTimeInterval exe_time = [end timeIntervalSinceNow: start];
    NSLog(@"Execution time for fibo_dp: %f", exe_time);
    
//    NSDate *start = [NSDate date];
//    NSLog(@"%d", fibo_dp(34, mem));
//    NSDate *end = [NSDate date];
//    NSTimeInterval exe_time = [end timeIntervalSinceNow: start];
//    NSLog(@"Execution time for fibo_dp: %f", exe_time);

//    NSLog(@"%d", fibo_itr(44, fibo));
//    NSLog(@"%d", fibo_dp(44, mem));
//    NSLog(@"%d", fib_rec(44));
//
}
