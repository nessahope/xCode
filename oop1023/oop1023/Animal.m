#import <Foundation/Foundation.h>

#import "Animal.h"

@implementation Animal

-(id)initWithString:(NSString*)nameTo {
    self = [super init];
    name = [NSString stringWithString:nameTo];
    return self;
}

-(NSString*)getName {
    return name;
}
-(void)setName:(NSString*)nameTo {
    name = [NSString stringWithString:nameTo];
}
-(void)sound {
    NSLog(@"I'm an Animal!");
}

@end
