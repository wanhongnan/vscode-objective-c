#import "../include/Calc.h"
#import <Cocoa/Cocoa.h>

@implementation Calc

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

    Calc *calc = [[Calc alloc] init];
    calc.frame = win.frame;
    [win.contentView addSubview:calc];
    [calc viewDidLoad];

    [NSApp run];
    [pool retain];
}

-(void) viewDidLoad {
    [super viewDidLoad];
    NSButton *btn = [[NSButton alloc] init];
    [btn setTitle:@"确认"];
    btn.frame= NSMakeRect(0, 0, 64, 64);
    [self addSubview:btn];

    [btn setTarget:self];
    [btn setAction:@selector(onBtnClick)];
}

-(void)onBtnClick{
    NSLog(@"onBtnClickmake");
}

@end

