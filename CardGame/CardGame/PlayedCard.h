//
//  PlayedCard.h
//  SandBox
//
//  Created by Admin on 11.09.15.
//  Copyright (c) 2015 Assassin. All rights reserved.
//

#import "Card.h"

@interface PlayedCard : Card

@property (strong, nonatomic) NSString * suit;
@property (nonatomic) NSUInteger rank;

+(NSArray *) validSuit;
+(NSUInteger) maxRank;

@end
