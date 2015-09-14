//
//  CalculatePlayerCard.m
//  CardGame
//
//  Created by Admin on 12.09.15.
//  Copyright (c) 2015 Assassin. All rights reserved.
//

#import "CalculatePlayerCard.h"

@implementation CalculatePlayerCard

+(NSUInteger) addResult:(NSUInteger)prevResult forCardMass:(Card *)card withAce:(AceCalculate *) aceCount{
    
    NSUInteger cardMass = 0;
    switch (card.cardMass) {
        case 1:
            cardMass = 11;
            break;
        case 11:
            cardMass = 2;
            break;
        case 12:
            cardMass = 3;
            break;
        case 13:
            cardMass = 4;
            break;
            
        default:
            cardMass = card.cardMass;
            break;
    }
    
    return (prevResult + cardMass) > 21 && aceCount.ace ? prevResult + cardMass - 10 : prevResult + cardMass;
}

@end
