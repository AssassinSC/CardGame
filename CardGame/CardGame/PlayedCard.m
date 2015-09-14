//
//  PlayedCard.m
//  SandBox
//
//  Created by Admin on 11.09.15.
//  Copyright (c) 2015 Assassin. All rights reserved.
//

#import "PlayedCard.h"

@implementation PlayedCard

-(NSString *) content{
    NSArray * rankString = [PlayedCard rankString];
    return [rankString[self.rank] stringByAppendingString:self.suit];
}

-(NSUInteger) cardMass{
    
    return self.rank;
}

+(NSArray *) validSuit{
    return @[@"♥",@"♣",@"♦",@"♠"];
}

@synthesize suit = _suit;

-(void) setSuit:(NSString *)suit{
    if ([[PlayedCard validSuit] containsObject:suit]) {
        _suit = suit;
    }
}

-(NSString *) suit{
    return _suit ? _suit : @"?";
}

+(NSArray *) rankString{
    return @[@"?",@"A", @"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+(NSUInteger) maxRank {
    return [[PlayedCard rankString] count] - 1;
}

-(void) setRank:(NSUInteger)rank{
    if (rank <= [PlayedCard maxRank]) {
        _rank = rank;
    }
}

@end
