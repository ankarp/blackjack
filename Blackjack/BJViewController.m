//
//  BJViewController.m
//  Blackjack
//
//  Created by Anatoly Karp on 2/6/14.
//  Copyright (c) 2014 Anatoly Karp. All rights reserved.
//

#import "BJViewController.h"
#import "BJDGameModel.h"
#import "BJDCard.h"

@interface BJViewController ()

@property (nonatomic, strong) NSArray* dealerCardViews;
@property (nonatomic, strong) NSArray* playerCardViews;
@property (nonatomic, strong) BJDGameModel *gameModel;

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

-(void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self restartGame];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(id) initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.gameModel = [[BJDGameModel alloc] init];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleNotificationGameDidEnd) name:BJNotificationGameDidEnd object:self.gameModel];
    }
    return self;
}

- (IBAction)didTapStandButton:(id)sender {
}

- (IBAction)didTapHitButton:(id)sender {
}

- (NSUInteger) supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

- (void) renderCards
{
    int maxCard = self.gameModel.maxPlayerCards;

    BJDCard *dealerCard;
    BJDCard *playerCard;
    UIImageView *dealerCardView;
    UIImageView *playerCardView;

    for (int i = 0; i < maxCard; i++) { // maxCard
        dealerCardView = self.dealerCardViews[i];
        playerCardView = self.playerCardViews[i];

        dealerCard = [self.gameModel dealerCardAtIndex:i];
        playerCard = [self.gameModel playerCardAtIndex:i];

        dealerCardView.hidden = (dealerCard == nil);
        if (dealerCard && dealerCard.isFaceUp) {
            dealerCardView.image = [dealerCard getCardImage];
        } else {
            dealerCardView.image = [UIImage imageNamed:@"card-back.png"];
        }

        playerCardView.hidden = (playerCard == nil);
        if (playerCard && playerCard.isFaceUp) {
            playerCardView.image = [playerCard getCardImage];
        } else {
            playerCardView.image = [UIImage imageNamed:@"card-back.png"];
        }
    }
}
- (void) restartGame
{
    [self.gameModel resetGame];
    BJDCard *card;

    card = [self.gameModel nextPlayerCard];
    card.isFaceUp = YES;
    card = [self.gameModel nextDealerCard];
    card.isFaceUp = YES;

    card = [self.gameModel nextPlayerCard];
    card.isFaceUp = YES;

    [self.gameModel nextDealerCard];

    [self renderCards];

    self.standButton.enabled = self.hitButton.enabled = YES;
}

@end
