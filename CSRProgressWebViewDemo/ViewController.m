//
//  ViewController.m
//  CSRProgressWebViewDemo
//
//  Created by student on 2017/7/1.
//  Copyright © 2017年 LeoAiolia. All rights reserved.
//

#import "ViewController.h"
#import "CSRProgressWebView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goToBaidu:(UIButton *)sender {
    CSRProgressWebView *webView = [[CSRProgressWebView alloc] init];
    webView.url = @"https://www.baidu.com";
    [self.navigationController pushViewController:webView animated:YES];
}
- (IBAction)webBrower:(UIButton *)sender {
    
}


@end
