//
//  ViewController.m
//  comparePerformace
//
//  Created by admin on 17/1/11.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>
@interface ViewController ()<UIWebViewDelegate,WKNavigationDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self loadWebViewWithUIWebView];
    [self loadWebViewWithWKWebView];
}
#pragma mark  使用UIWebView加载网页
- (void)loadWebViewWithUIWebView{
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.taobao.com"]]];
    webView.delegate = self;
    [self.view addSubview:webView];
    
}
#pragma mark  UIWebView的代理方法



#pragma mark  使用WKWebView加载网页
- (void)loadWebViewWithWKWebView{
    
    WKWebView *webView = [[WKWebView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.taobao.com"]]];
    webView.navigationDelegate = self;
    [self.view addSubview:webView];
}
#pragma mark  WKWebView的代理方法
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
