#import "../include/CalcViewController.h"
#import <Cocoa/Cocoa.h>

@implementation CalcViewController

-(void) loadView {
    NSLog(@"loadView start");
    [super loadView];
    self.view = [[NSView alloc] initWithFrame:NSMakeRect(0,0,1000, 500)]; 
    [self createUI];
}

-(void)createUI{
    calcBtn = [[NSButton alloc] init];
    calcBtn.frame = NSMakeRect(0, 0, 64, 64);
    [calcBtn setTarget:self];
    [calcBtn setAction:@selector(onCalcBtnClick:)];
    [calcBtn setTitle:@"计算"];
    [self.view addSubview:calcBtn];

    cleanBtn = [[NSButton alloc] init];
    cleanBtn.frame = NSMakeRect(128, 0, 64, 64);
    [cleanBtn setTarget:self];
    [cleanBtn setAction:@selector(onCleanBtnClick:)];
    [cleanBtn setTitle:@"清空"];
    [self.view addSubview:cleanBtn];

    for(int i = 0; i < 10 ; i ++ ){
        NSButton *btn = [[NSButton alloc] init];
        NSString *title = [[NSString alloc] initWithFormat:@"%d",i];
        [btn setTitle:title];
        btn.tag = i;
        btn.frame= NSMakeRect(i * 70, 120, 64, 64);
        [self.view addSubview:btn];

        [btn setTarget:self];
        [btn setAction:@selector(onBtnClick:)];
    }

    textFiled = [[NSTextField alloc] init];
    textFiled.frame = NSMakeRect(0,300,300,64);
    [self.view addSubview:textFiled];
}

-(void)onCalcBtnClick:(NSButton *)btn
{
    NSLog(@"onCalcBtnClick");
}

-(void)onCleanBtnClick:(NSButton *)btn
{
    NSLog(@"onCleanBtnClick");
}


-(void)onBtnClick:(NSButton *)btn
{
    NSLog(@"onBtnClickmake %d",btn.tag);
}


+(void)showWindow{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSApplication *app = [NSApplication sharedApplication];

    NSRect rc = NSMakeRect(0, 0, 800, 600);
    NSInteger uiStyle = NSTitledWindowMask | NSResizableWindowMask | NSClosableWindowMask;
    NSBackingStoreType backingStoreStyle = NSBackingStoreBuffered;
    NSWindow *win = [[NSWindow alloc] initWithContentRect:rc styleMask:uiStyle backing:backingStoreStyle defer:NO];
    [win setTitle:@"Calc Window"];
    [win makeKeyAndOrderFront:win];
    [win makeMainWindow];

    //使用NSViewController管理View
    //Calc *calc = [[Calc alloc] initWithWindow:win];
    CalcViewController *calc = [[CalcViewController alloc] initWithNibName:nil bundle:nil];
    win.contentView = calc.view;

    //直接加View，当Calc是NSView时使用
    //Calc *calc = [[Calc alloc] init];
    //calc.frame = win.frame;
    //[win.contentView addSubview:calc];
    //[calc viewDidLoad];

    [NSApp run];
    [pool retain];
}

@end

