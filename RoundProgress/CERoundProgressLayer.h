//
//  CERoundProgressLayer.h
//  RoundProgress
//
//  Created by Renaud Pradenc on 13/06/12.
//  Copyright (c) 2012 Céroce. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface CERoundProgressLayer : CALayer

@property (nonatomic, assign) float progress;

@property (nonatomic, assign) float startAngle;
@property (nonatomic, retain) UIColor *tintColor;
@property (nonatomic, retain) UIColor *trackColor;

@end
