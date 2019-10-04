#import "../include/LinkNode.h"

@implementation LinkNode

-(instancetype)init
{
    nextNode = nil;
}

-(LinkNode*)next
{
    return nextNode;
}

-(void)append:(LinkNode*)newNode
{
    [nextNode release];
    [newNode retain];
    nextNode = newNode;
}

@end


