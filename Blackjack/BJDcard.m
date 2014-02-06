//
//  BJDcard.m
//  Blackjack
//
//  Created by Anatoly Karp on 2/6/14.
//  Copyright (c) 2014 Anatoly Karp. All rights reserved.
//

#import "BJDcard.h"

@implementation BJDcard

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

@end
