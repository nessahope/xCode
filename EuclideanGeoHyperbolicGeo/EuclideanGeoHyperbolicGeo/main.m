#import <Foundation/Foundation.h>

//@protocol MyProtocol
//@optional //to make protocols optional if we get a warning saying that a class does not conform to protol
////return void, name of method is print, and it return an int
//-(void)print:(int)number;
//
//@end
//
////We have to attach MyProtocol. We define everything here in the interface
//@interface MyClass : NSObject <MyProtocol>
//
//@end
//
//
//@implementation MyClass
//-(void)print:(int)number{
//    NSLog(@"Hi! %d", number);
//}
//@end

//-----------------------------------GEOMETRY PROTOCOLS START--------------------------
//inherting from NSObject is redundant because our classes already inherit from NSObject however ths is good practice
//we have to add the method in the classes so it conforms to the protocol
@protocol Plane <NSObject>
-(int)dummy;
@end

@protocol Geometry <Plane>
@required //so we HAVE to implement it
-(int)dist:(int)x0 secondX:(int)x1;

@end
//---------------------Protocols are inheriting from eachother-------------------------


@interface EuclideanG : NSObject <Geometry>

@end
@implementation EuclideanG
//from protocol Geometry
-(int)dist:(int)x0 secondX:(int)x1;{
return x1 - x0;
}

//from protocol Plane
-(int)dummy{
    return -INT_MAX;
}
@end



@interface HyperbolicG : NSObject <Geometry>
//makes a static-class only method
+(void)printHi;
@end
@implementation HyperbolicG
-(int)dist:(int)x0 secondX:(int)x1;{
    return (x1 - x0)*(x1 - x0);
}

-(int)dummy {
    return -INT_MAX;
}
//how we implement it
+(void)printHi{
    NSLog(@"Hi!");
}
@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        MyClass *mc = [[MyClass alloc]init];
//        [mc print:10];
        
        EuclideanG *eg = [[EuclideanG alloc]init];
        HyperbolicG *hg = [[HyperbolicG alloc]init];
        
        int n = 10, m = 20;
        int d = [eg dist:n secondX:m];
        NSLog(@"%d",d);
    }
    return 0;
}
