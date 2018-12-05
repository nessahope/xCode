#import <Foundation/Foundation.h>
#import <objc/runtime.h> //VERY IMPORTANT to import this when dealing with dynamic getter and setter

//name of property and category
static char SurfaceS; //must make a static when dealing with property and dynamic

//creating the NSobject shape
@interface Shape : NSObject
-(void) draw; //can call the function draw
@end
//Inheriting NSObject through Shape as Circle
@interface Circle : Shape {
    float r; //giving it parameters
}
-(id)initWithR:(float)R;
-(void)draw;
-(float)getR;
@end

@implementation Shape
-(void)draw {NSLog(@"I'm a Shape!");} //when draw is called it will print this
@end
@implementation Circle
-(id)initWithR:(float)R {
    self = [super init]; //self=this super=Shape
    r = R;
    return self; //return to just here
}
-(void)draw {NSLog(@"I'm a Circle!");}
-(float)getR {return r;}
@end

//THIS IS A CATEGORY. WE ARE ADDING THE SURFACE FUNTION TO CALL IT EVEN THOUGH THE INHERITED NSOBJECT DOESNT HAVE THIS FUNCTION
//--------------------------IMPORTANT----------------------------
@interface Circle (Surface)
@property (nonatomic, strong) NSString *s; //ALWAYS in the @interface. Takes 2 arguments. ALWAYS use nonatomic and strong
-(float) surface;
@end
@implementation Circle (Surface)
@dynamic s; //Works with the property. MUST be in the @implementation
//SETTER method
-(void)setS:(NSString*)S {
    [self willChangeValueForKey:@"s"];
    objc_setAssociatedObject(self, &SurfaceS, S, OBJC_ASSOCIATION_RETAIN_NONATOMIC); //SurfaceS is a static char. We created it to act as a Key and store a value
    [self didChangeValueForKey:@"s"];
}
//GETTER method
-(NSString*)s {
   // return objc_setAssociatedObject(self, &SurfaceS);
    return objc_getAssociatedObject(self, &SurfaceS);
}
-(float) surface {
    return M_PI * [self getR] * [self getR]; //we have to use the getter methods. Specific for this example
}
@end
//---------------------------------------------------------------

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Circle *c = [[Circle alloc]initWithR:5.0]; //giving R a float value
        NSLog(@"%f ", [c surface]);
        c.s = @"Hello!"; //setter method is called. Because we are using the dynamic property
        NSLog(@"%@ ", c.s); //getter method is called
    }
    return 0;
}
