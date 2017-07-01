//
//  ViewController.m
//  CSRProgressWebViewDemo
//
//  Created by student on 2017/7/1.
//  Copyright © 2017年 LeoAiolia. All rights reserved.
//

#import "ViewController.h"
#import "CSRProgressWebView.h"
#import "KINWebBrowserViewController.h"

static NSString *const defaultAddress = @"https://www.baidu.com";

@interface ViewController ()  <KINWebBrowserDelegate>

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
    KINWebBrowserViewController *webBrowser = [KINWebBrowserViewController webBrowser];
    [webBrowser setDelegate:self];
    [self.navigationController pushViewController:webBrowser animated:YES];
    [webBrowser loadURLString:defaultAddress];
}
#pragma mark - KINWebBrowserDelegate Protocol Implementation

- (void)webBrowser:(KINWebBrowserViewController *)webBrowser didStartLoadingURL:(NSURL *)URL {
    NSLog(@"Started Loading URL : %@", URL);
}

- (void)webBrowser:(KINWebBrowserViewController *)webBrowser didFinishLoadingURL:(NSURL *)URL {
    NSLog(@"Finished Loading URL : %@", URL);
}

- (void)webBrowser:(KINWebBrowserViewController *)webBrowser didFailToLoadURL:(NSURL *)URL withError:(NSError *)error {
    NSLog(@"Failed To Load URL : %@ With Error: %@", URL, error);
}

- (void)webBrowserViewControllerWillDismiss:(KINWebBrowserViewController*)viewController {
    NSLog(@"View Controller will dismiss: %@", viewController);
    
}

@end
