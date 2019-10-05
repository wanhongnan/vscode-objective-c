
#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface Calc : NSViewController{
}

+(void)showWindow;
-(void)loadView;
-(void)createUI;
-(void)onBtnClick:(NSButton *)btn;

@end
