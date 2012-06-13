//
//  CERoundProgressView.h
//  RoundProgress
//
//  Created by Renaud Pradenc on 25/05/12.
//  Copyright (c) 2012 Céroce. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CERoundProgressView : UIView

@property (nonatomic, assign) float progress;   // 0 .. 1

@property (nonatomic, assign) float startAngle; // 0..2π 
@property (nonatomic, retain) UIColor *tintColor;
@property (nonatomic, retain) UIColor *trackColor;

@end
