//
//  Deck.h
//  SandBox
//
//  Created by Admin on 11.09.15.
//  Copyright (c) 2015 Assassin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void) addCard: (Card *) card atTop: (BOOL) atTop;
-(void) addCard: (Card *) card;

-(Card *) drawRandomCard;

@end
