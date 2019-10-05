
#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "../include/LinkNode.h"
#import "../include/FirstWindow.h"
#import "../include/CalcViewController.h"

int main (int argc, const char *argv[])
{
    //启动第一个窗口
    //firstWindow();
    //启动计算器程序
    [CalcViewController showWindow];
    return 0;
}

