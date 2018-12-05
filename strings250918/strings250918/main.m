#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char* str = "Hello!\n";
        char str2[10];
        for(int i = 0; i < 7; i++) {
            str2[i] = str[i];
        }
        str2[7] = 0;
        str2[0] = 'Q';
        NSLog(@"%c", str2[0]);
        NSString *string1 = @"Some sample string!"; //fixed
        NSMutableString *string2 = [NSMutableString stringWithString:string1]; //you can manipulate it
        
        
        //////////////////////////
        NSMutableString *mString1;
        NSMutableString *mString2;
        mString1 = [NSMutableString stringWithString:@"Hello, "];
        mString2 = [NSMutableString stringWithString:mString1];
        [mString2 appendString:@"World!"];
        NSLog(@"mString1 = %@", mString1);
        NSLog(@"mString2 = %@", mString2);
        int length1, length2;
        length1 = [mString1 length];
        length2 = [mString2 length];
        NSLog(@"Size of mString1=%d and size of mString2=%d", length1, length2);
        
        
        //////////////////////////
        NSString *stra = @"Some sample string!";
        NSRange match = [stra rangeOfString:@"example"];
        if(match.location == NSNotFound)
            NSLog(@"Not Found!");
        else
            NSLog(@"index of example = %lu", match.location);
        NSLog(@"length of example = %lu", match.length);
        /////////////////////////////
        
          NSString *strb = @"Some sample string!";
          NSMutableString *strc = [NSMutableString stringWithString:strb];
        [strc replaceCharactersInRange:[strc rangeOfString:@"sample"] withString:@"example"];

        NSLog(@"strc = %@", [strc capitalizedString]);
    
        [strc replaceCharactersInRange:NSMakeRange(5, 2) withString:@"exa"];
        NSLog(@"strc = %@", strc);
        
        if ([strb isEqualToString:strc])
            NSLog(@"strb and strc match!");
        else
            NSLog(@"strb and strc do not match!");
     
        NSString *str1 = @"12345.54";
        double num = [str1 integerValue];
        NSLog(@"%f", num + 5); //to print all the values and converting char* to num
        
        const char *str2 = [str1 UTF8String];
        NSString(;
                
 
        }
    }
    return 0;
}
