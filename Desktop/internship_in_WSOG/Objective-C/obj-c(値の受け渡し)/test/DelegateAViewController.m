//
//  DelegateAViewController.m
//  test
//
//  Created by 嘉手苅ひな on 2016/11/16.
//  Copyright © 2016年 SOWG. All rights reserved.
//

#import "DelegateAViewController.h"

// 05 Delegate画面遷移用 読込
#import "AppDelegate.h"



@interface DelegateAViewController ()

@end

@implementation DelegateAViewController







@synthesize globalStrings01;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}




#pragma mark - appDelegateに転送
- (IBAction)Second:(id)sender {
    
    // delegateデータを送る準備
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    // appDelegate.globalStrings01 転送
    appDelegate.globalStrings01 =  self.globalStrings01.text;
    
    //ソフトウェアキーボードの非表示
    [self.globalStrings01 resignFirstResponder];
}










- (void)viewDidLoad {
    [super viewDidLoad];

    //機能実装　btnの値を受け取る
    // delegateデータを受ける
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    self.BtnAns.text = appDelegate.BtnAnsNum01;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
