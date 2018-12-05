#import <Foundation/Foundation.h>

#import "Animal.h"
#import "Lion.h"
#import "bird.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Animal *animal = [[Animal alloc] initWithString:@"Animal"];
        Lion *lion = [[Lion alloc] initWithString:@"Jack"];
        Bird *bird = [[Bird alloc] initWithString:@"Lily"];
        [animal sound];
        [lion sound];
        [bird sound];
        Animal *animalLion = [[Lion alloc] initWithString:@"Alex"];
        [animalLion sound];
        // [animalLion smell]; does not work
        Animal *animalBird = [[Bird alloc] initWithString:@"Lisa"];
        [animalBird sound];
    }
    return 0;
}
