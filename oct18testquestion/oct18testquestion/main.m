#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSFileHandle *file;
        NSMutableData *data;
        NSError *error;
        
        NSString *Content = [NSString stringWithContentsOfFile:@"/Users/admin/desktop/input.txt" encoding:NSUTF8StringEncoding error:&error];
        if(error) {
            NSLog(@"[Error]) : %@", error.localizedDescription);
            return 0;
        }
        NSLog(@"%@", Content);
      
        NSArray *lines = [Content componentsSeparatedByString:@"\n"];
        for(int i = 0; i < [lines count]; i++) {
            NSInteger number = [[lines objectAtIndex:i] integerValue];
            if(number > 1000000 && number >= 5000000){
                number = number * 0.9;
            }else if (number < 5000000) {
                number = number * 0.8;
            }
    
            NSString* myNewString = [NSString stringWithFormat:@"%li", (long)number];
            
            data = [NSMutableData dataWithBytes:myNewString length:strlen(myNewString)];
            file = [NSFileHandle fileHandleForUpdatingAtPath:@"/Users/admin/desktop/taxed.txt"];
        }
    }
    return 0;
}
