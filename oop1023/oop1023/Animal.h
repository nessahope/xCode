#ifndef Animal_h
#define Animal_h

@interface Animal : NSObject {
    NSString *name;
}

-(id)initwithString:(NSString*)NameTo;

-(void) setName:(NSString*)NameTo;
-(NSString*) getName;
-(void)sound;


@end


#endif /* Animal_h */
