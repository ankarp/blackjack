//
//  NSMutableArray+Shuffle.m
//  Blackjack
//
//  Created by Anatoly Karp on 2/6/14.
//  Copyright (c) 2014 Anatoly Karp. All rights reserved.
//

#import "NSMutableArray+Shuffle.h"

@implementation NSMutableArray (Shuffle)

-(void) shuffle
{
    int count = [self count];

    NSMutableArray *dupeArr = [self mutableCopy];
    count = [dupeArr count];
    [self removeAllObjects];

    for (int i = 0; i < count; i++) {
        int nElements = count - i;
        int n = (arc4random() % nElements);
        [self addObject:dupeArr[n]];
        [dupeArr removeObjectAtIndex:n];
    }
}

@end
