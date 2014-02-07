//
//  BJViewController.m
//  Blackjack
//
//  Created by Anatoly Karp on 2/6/14.
//  Copyright (c) 2014 Anatoly Karp. All rights reserved.
//

#import "BJViewController.h"

@interface BJViewController ()

@property (nonatomic, strong) NSArray* dealerCardViews;
@property (nonatomic, strong) NSArray* playerCardViews;

@end

@implementation BJViewController

@synthesize dealerCard1;
@synthesize dealerCard2;
@synthesize dealerCard3;
@synthesize dealerCard4;
@synthesize dealerCard5;

@synthesize playerCard1;
@synthesize playerCard2;
@synthesize playerCard3;
@synthesize playerCard4;
@synthesize playerCard5;

@synthesize hitButton;
@synthesize standButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.dealerCardViews = @[self.dealerCard1, self.dealerCard2, self.dealerCard3, self.dealerCard4, self.dealerCard5];
    self.playerCardViews = @[self.playerCard1, self.playerCard2, self.playerCard3, self.playerCard4, self.playerCard5];
}

- (void) viewDidUnload
{
    [super viewDidUnload];
    self.dealerCardViews = nil;
    self.playerCardViews = nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTapStandButton:(id)sender {
}

- (IBAction)didTapHitButton:(id)sender {
}

- (NSUInteger) supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

@end
