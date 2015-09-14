//
//  Card.h
//  SandBox
//
//  Created by Admin on 11.09.15.
//  Copyright (c) 2015 Assassin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (nonatomic, getter=isChoose) BOOL * choose;
@property (strong, nonatomic) NSString * content;
@property (nonatomic) NSUInteger cardMass;


@end
