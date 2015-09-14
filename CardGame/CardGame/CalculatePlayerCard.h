//
//  CalculatePlayerCard.h
//  CardGame
//
//  Created by Admin on 12.09.15.
//  Copyright (c) 2015 Assassin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "AceCalculate.h"
@interface CalculatePlayerCard : NSObject

+(NSUInteger) addResult : (NSUInteger) prevResult forCardMass:(Card *) card withAce:(AceCalculate *) aceCount;

@end
