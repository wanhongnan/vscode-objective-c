#import <Foundation/NSObject.h>

@interface LinkNode : NSObject{
    LinkNode *nextNode;
}

-(LinkNode*)next;
-(void)append:(LinkNode*)newNode;
@end
