
#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface CalcViewController : NSViewController{
    NSButton *calcBtn;
    NSButton *cleanBtn;
    NSTextField *textFiled;
}

+(void)showWindow;
-(void)loadView;
-(void)createUI;
-(void)onBtnClick:(NSButton *)btn;
-(void)onCalcBtnClick:(NSButton *)btn;
-(void)onCleanBtnClick:(NSButton *)btn;

@end
