#import <Foundation/Foundation.h>
#define N 20

//---------------------------Generic OR Templates----------------------------

//when defining a class, we create a template by <ObjectType> (there is no auto fill in)
@interface Sample<ObjectType> : NSObject{
    //we use ObjectType here when initializing a variable
    ObjectType nums[20];
}
-(void)print;
//overriding the alloc method
+(id)alloc;
-(id)init;
@end


@implementation Sample
-(void)print{
    NSLog(@"%@", nums[0]);
}
+(id)alloc{
    NSLog(@"Allocating..");
    return [super alloc];
}
-(id)init{
    self = [super init];
    NSLog(@"Initializing..");
    return self;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //any data type you want for any/same class
        Sample<NSNumber*> *s = [[Sample alloc]init];
        Sample<NSString*> *s2 = [[Sample alloc]init];
        
        //this will print "Allocating.." & "Initializing.."
        Sample *a = [[Sample alloc]init];
    }
    return 0;
}

