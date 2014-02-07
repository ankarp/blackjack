//
//  BJDcard.m
//  Blackjack
//
//  Created by Anatoly Karp on 2/6/14.
//  Copyright (c) 2014 Anatoly Karp. All rights reserved.
//

#import "BJDCard.h"

@implementation BJDCard

- (BOOL) isAnAce
{
    if (self.digit == 1) return YES;
    return NO;
}

- (BOOL) isAFaceOrTenCard
{
    if (self.digit > 9) return YES;
    return NO;
}

- (UIImage *) getCardImage
{
    NSString *suit;

    switch (self.suit) {
        case BJCardSuitClub:
            suit = @"club";
            break;
        case BJcardSuitDiamond:
            suit = @"diamond";
            break;
        case BJcardSuitHeart:
            suit = @"heart";
            break;
        case BJcardSuitSpade:
            suit = @"spade";
        default:
            break;
    }

    NSString *filename = [NSString stringWithFormat:@"%@-%d.png", suit, self.digit];
    return [UIImage imageNamed:filename];
}

+(NSMutableArray *) generateAPackOfCards
{
    NSMutableArray *arr = [NSMutableArray array];

    BJDCard *card;
    int suit, digit;

    for (suit = 0; suit < 4; suit++) {
        card = [[BJDCard alloc] init];
        card.suit = suit;
        card.digit = digit;
        [arr addObject:card];
    }

    return arr;
}

@end
