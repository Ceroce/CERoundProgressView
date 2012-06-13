//
//  CERoundProgressView.m
//  RoundProgress
//
//  Created by Renaud Pradenc on 25/05/12.
//  Copyright (c) 2012 Céroce. All rights reserved.
//

#import "CERoundProgressView.h"

@interface CERoundProgressView ()

- (void) _initIVars;

@end

@implementation CERoundProgressView


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self _initIVars];
    }
    return self;
}

- (id) initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self) {
        [self _initIVars];
    }
    return self;
}

- (void) _initIVars
{
    self.backgroundColor = [UIColor clearColor];
    self.opaque = NO;
    self.tintColor = [UIColor colorWithRed:0.2 green:0.45 blue:0.8 alpha:1.0];
    self.trackColor = [UIColor whiteColor];
}


@synthesize progress;
- (void) setProgress:(float)newProgress
{
    if(newProgress < 0.0f)
        progress = 0.0f;
    else if(newProgress > 1.0f)
        progress = 1.0f;
    else
        progress = newProgress;
    
    [self setNeedsDisplay];
}

@synthesize tintColor;
@synthesize trackColor;

@synthesize startAngle;

- (void)drawRect:(CGRect)rect
{
    CGFloat radius = MIN(self.bounds.size.width, self.bounds.size.height)/2.0;
    CGPoint center = {self.bounds.size.width/2.0, self.bounds.size.height/2.0};
    
    // Background circle
    UIBezierPath *backgroundCircle = [UIBezierPath bezierPathWithArcCenter:center
                                                                    radius:radius
                                                                startAngle:0.0
                                                                  endAngle:2.0*M_PI
                                                                 clockwise:YES];
    
    [trackColor setFill];
    [backgroundCircle fill];
    
    // Elapsed arc
    UIBezierPath *pieShare = [UIBezierPath bezierPathWithArcCenter:center 
                                                            radius:radius 
                                                        startAngle:startAngle
                                                          endAngle:startAngle + progress*2.0*M_PI
                                                         clockwise:YES];
    [pieShare addLineToPoint:center];
    [pieShare closePath];
    
    [tintColor setFill];
    [pieShare fill];                                   
}


@end
