//
//  ViewController.m
//  UIKit-UIActivityIndicatorView
//
//  Created by 王钱钧 on 14-9-3.
//  Copyright (c) 2014年 王钱钧. All rights reserved.
//

#import "ViewController.h"

#import "CustomUIActivityIndicatorView.h"

@interface ViewController ()
@property (nonatomic, strong)UIActivityIndicatorView *actInView;
@property (nonatomic, strong)CustomUIActivityIndicatorView *progressView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.actInView = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
//    self.actInView.frame = CGRectMake(100, 100, 37, 37);
    self.actInView.center = self.view.center;
    [self.view addSubview:self.actInView];
    [self.actInView startAnimating];
    
    self.progressView = [[CustomUIActivityIndicatorView alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 2)];
    self.progressView.tintColor = [UIColor grayColor];
    self.progressView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
    
    [self.view addSubview:self.progressView];
    [self.progressView startAnimating];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 400, 100, 44)];
    btn.backgroundColor = [UIColor yellowColor];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)btnClick:(UIButton *)sender
{
    self.actInView.isAnimating ? [self.actInView stopAnimating] : [self.actInView startAnimating];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
