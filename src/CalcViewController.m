#import "../include/CalcViewController.h"
#import <Cocoa/Cocoa.h>

@implementation CalcViewController

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

-(void) loadView {
    NSLog(@"loadView start");
    [super loadView];
    self.view = [[NSView alloc] initWithFrame:NSMakeRect(0,0,1000, 500)]; 
    [self createUI];
}
-(void)createUI{
    NSButton *btn = [[NSButton alloc] init];
    [btn setTitle:@"确认"];
    btn.tag = 1;
    btn.frame= NSMakeRect(0, 0, 64, 64);
    [self.view addSubview:btn];

    [btn setTarget:self];
    [btn setAction:@selector(onBtnClick:)];
}

-(void)onBtnClick:(NSButton *)btn
{
    NSLog(@"onBtnClickmake %d",btn.tag);
}

@end

