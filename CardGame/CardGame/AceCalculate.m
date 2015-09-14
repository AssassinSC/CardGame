//
//  AceCalculate.m
//  CardGame
//
//  Created by Admin on 13.09.15.
//  Copyright (c) 2015 Assassin. All rights reserved.
//

#import "AceCalculate.h"

@interface AceCalculate (){
    NSUInteger countAce;
}

@end

@implementation AceCalculate

@synthesize ace = _ace;

-(BOOL) isAce{
    if (countAce == 0) {
        return NO;		
    } else {
        countAce --;
        return YES;
    }
    //return _ace;

}

-(void) setAce:(BOOL)ace{
    countAce = ace ? ++countAce : countAce;
    _ace = ace;
    
}

@end
