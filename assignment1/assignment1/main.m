#import <Foundation/Foundation.h>
#define N 10000

void somealgo(int a[N][N], int length){
    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++)
            if(N == 1){
                break;
            }else if(N%2 == 0){
                a[i] = (N*3)+1;
            }else{
                a[j] = N/2;
            }
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
