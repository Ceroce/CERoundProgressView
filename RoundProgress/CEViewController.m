//
//  CEViewController.m
//  RoundProgress
//
//  Created by Renaud Pradenc on 25/05/12.
//  Copyright (c) 2012 Céroce. All rights reserved.
//

#import "CEViewController.h"

@interface CEViewController ()
{

}


@end

@implementation CEViewController

@synthesize progressView;
@synthesize progressSlider;
@synthesize playPauseButton;
@synthesize player;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.player = [[[CEPlayer alloc] init] autorelease];
    self.player.delegate = self;
    
    self.progressView.startAngle = (3.0*M_PI)/2.0;
    self.progressView.trackColor = [UIColor colorWithWhite:0.80 alpha:1.0];
}

- (void)viewDidUnload
{
    [self setProgressView:nil];
    [self setProgressSlider:nil];
    [self setPlayPauseButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)dealloc {
    [progressView release];
    [progressSlider release];
    self.player = nil;
    [playPauseButton release];
    [super dealloc];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)progressSlider:(UISlider *)sender 
{
    self.player.position = sender.value;
    self.progressView.progress = sender.value;
}

- (IBAction)playPauseButton:(UIButton *)sender 
{
    if(sender.selected) // Shows the Pause symbol
    {
        sender.selected = NO;
        [self.player pause];
    }
    else    // Shows the Play symbol
    {
        sender.selected = YES;
        [self.player play];
    }
        
}



// MARK: CEPlayerDelegate methods

- (void) player:(CEPlayer *)player didReachPosition:(float)position
{
    self.progressView.progress = position;
    self.progressSlider.value = position;
}

- (void) playerDidStop:(CEPlayer *)player
{
    self.playPauseButton.selected = NO;
    self.progressView.progress = 0.0;
    self.progressSlider.value = 0.0;    
}
@end
