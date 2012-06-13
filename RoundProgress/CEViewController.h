//
//  CEViewController.h
//  RoundProgress
//
//  Created by Renaud Pradenc on 25/05/12.
//  Copyright (c) 2012 Céroce. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CERoundProgressView.h"
#import "CEPlayer.h"

@interface CEViewController : UIViewController <CEPlayerDelegate>


@property (retain, nonatomic) IBOutlet CERoundProgressView *progressView;
@property (retain, nonatomic) IBOutlet UISlider *progressSlider;
- (IBAction)progressSlider:(UISlider *)sender;
- (IBAction)playPauseButton:(UIButton *)sender;
@property (retain, nonatomic) IBOutlet UIButton *playPauseButton;

@property (retain, nonatomic) CEPlayer *player;

@end
