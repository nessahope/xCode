#import <Foundation/Foundation.h>
#define N 20

//He wrote this in about 2 minutes so I didn't have time to add comments


@interface Array : NSObject{
int nums[N];
}
//whenever you want to return an object we have to use id
-(id)init;
-(int)ForEach:(int (^)(int *))action;

@end

@implementation Array
-(id)init{
    self = [super init];
    for(int i = 0; i < N; i++)
        nums[i] = i+1;
    return self;
}
-(int)ForEach:(int (^)(int *))action{
    return action(nums);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Array *ar = [[Array alloc]init];
        
        [ar ForEach:^(int nums[]){
            for(int i = 0; i < N; i++)
                printf("%d, ", nums[i]);
            //you can return 0 here. In this case we're not returning a number so we don't need it
            return N;
        }];
        printf("Sum is: %d", [ar ForEach:^(int nums[]){
            int sum = 0;
            for(int i = 0; i < N; i++)
                sum += nums[i];
                        return sum;
        }]);
    }
    return 0;
}
