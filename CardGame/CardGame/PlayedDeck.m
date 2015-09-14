//
//  PlayedDeck.m
//  SandBox
//
//  Created by Admin on 11.09.15.
//  Copyright (c) 2015 Assassin. All rights reserved.
//

#import "PlayedDeck.h"

@implementation PlayedDeck

-(instancetype) init{
    self = [super init];
    
    if (self) {
        
        for (NSString * suit in [PlayedCard validSuit]) {
            for (NSUInteger rank = 1; rank <= [PlayedCard maxRank]; rank++) {
                PlayedCard * card = [[PlayedCard alloc] init];
                card.suit = suit;
                card.rank = rank;
                [self addCard:card];
            }
        }
        
    }	
    
    
    return self;
}

@end
