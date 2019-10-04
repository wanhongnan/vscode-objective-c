
#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "../include/LinkNode.h"

int main (int argc, const char *argv[])
{
    NSArray *arr = [NSArray arrayWithObjects: @"abc",@"def"];
    NSLog(@"%i", [arr count]);
    for(NSString *str in arr){
        if([str length] == YES){
            NSLog(@"%@ show",str);
        }else{
            NSLog(@"length is zero!");
        }
    }
    return 0;
    //return NSApplicationMain(argc,argv);
}

