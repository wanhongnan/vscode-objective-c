#import "../include/FirstWindow.h"
#import <Cocoa/Cocoa.h>

void firstWindow(){
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
    NSApplication* app = [NSApplication sharedApplication];
	
    //Create the main window
    NSRect rc = NSMakeRect(0, 0, 800, 600);
    NSUInteger uiStyle = NSTitledWindowMask | NSResizableWindowMask | NSClosableWindowMask;
    NSBackingStoreType backingStoreStyle = NSBackingStoreBuffered;
    NSWindow* win = [[NSWindow alloc] initWithContentRect:rc styleMask:uiStyle backing:backingStoreStyle defer:NO];
    [win setTitle:@"HelloWin Test"];
    [win makeKeyAndOrderFront:win];
    [win makeMainWindow];
	
    //Start the event loop by calling NSApp run
    [NSApp run];
    [pool drain];
}


