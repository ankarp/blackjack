//
//  BJDcard.h
//  Blackjack
//
//  Created by Anatoly Karp on 2/6/14.
//  Copyright (c) 2014 Anatoly Karp. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : int
{
    BJCardSuitClub = 0,
    BJcardSuitSpade,
    BJcardSuitDiamond,
    BJcardSuitHeart
} BJCardSuit;

@interface BJDCard : NSObject

@property (nonatomic) BJCardSuit suit;
@property (nonatomic) int digit;
@property (nonatomic) BOOL isFaceUp;

- (BOOL) isAnAce;
- (BOOL) isAFaceOrTenCard;
- (UIImage *) getCardImage;

@end
