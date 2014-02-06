//
//  BJViewController.m
//  Blackjack
//
//  Created by Anatoly Karp on 2/6/14.
//  Copyright (c) 2014 Anatoly Karp. All rights reserved.
//

#import "BJViewController.h"

@interface BJViewController ()

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
@end
