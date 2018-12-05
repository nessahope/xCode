#import <Foundation/Foundation.h>

#import "myClas.h"

@implementation MyClass

@synthesize publicNum;

-(id)init{
    self = [super init];
    num1 = 10;
    num2 = 20;
    return self;
} //id = instance type

-(void)setNum1:(int)num { //implementing a method
    num1 = num;
}

-(void)setNum2:(int)num {
    num2 = num;
}

-(int)addNums {
    return num1 + num2;
}

@end
