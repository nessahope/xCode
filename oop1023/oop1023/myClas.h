#ifndef myClas_h  //preprocessor
#define myClas_h

@interface MyClass : NSObject { //declaring scope of field variables
    
    int num1; //default access modifier for field variables is private
    int num2;
}

-(void) setNum1:(int) num; //declaring method
-(void) setNum2:(int) num;
-(int)addNums; //declaring with not argument

@property int publicNum; //public int in Java

@end

#endif /* myClas_h */
