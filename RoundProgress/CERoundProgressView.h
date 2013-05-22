//
//  CERoundProgressView.h
//  RoundProgress
//
//  Created by Renaud Pradenc on 25/05/12.
//  Copyright (c) 2012 Céroce. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CERoundProgressView : UIView <UIAppearanceContainer>

@property (nonatomic, assign) float progress;   // 0 .. 1
- (void) setProgress:(float)progress animated:(BOOL)animated;

@property (nonatomic, assign) float startAngle; // 0..2π 
@property (nonatomic, retain) UIColor *tintColor UI_APPEARANCE_SELECTOR;
@property (nonatomic, retain) UIColor *trackColor UI_APPEARANCE_SELECTOR;
@property (nonatomic, assign) CFTimeInterval animationDuration;

@end
