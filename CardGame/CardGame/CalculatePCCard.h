//
//  CalculatePCCard.h
//  CardGame
//
//  Created by Admin on 13.09.15.
//  Copyright (c) 2015 Assassin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CardView.h"
#import "PlayedCard.h"
#import "PlayedDeck.h"
#import "CalculatePlayerCard.h"


@interface CalculatePCCard : NSObject


-(void) computer:(NSUInteger) playerScore cardDeck:(PlayedDeck *) cardDeck sender:(UIViewController *) sender;

@end
