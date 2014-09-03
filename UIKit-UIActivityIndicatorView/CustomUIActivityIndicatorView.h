//
//  CustomUIActivityIndicatorView.h
//  UIKit-UIActivityIndicatorView
//
//  Created by 王钱钧 on 14-9-3.
//  Copyright (c) 2014年 王钱钧. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomUIActivityIndicatorView : UIView

@property (nonatomic, strong) NSArray *progressChunks;

@property (nonatomic, strong) UIColor   * progressTintColor;

@property (nonatomic, strong) UIColor   * trackTintColor;

/*! A Boolean value that controls whether the receiver is hidden when the animation is stopped. Default YES */
@property (nonatomic) BOOL hidesWhenStopped;

@property (nonatomic, readonly) BOOL isAnimating;

- (void)startAnimating;

- (void)stopAnimating;

- (BOOL)isAnimating;
@end
