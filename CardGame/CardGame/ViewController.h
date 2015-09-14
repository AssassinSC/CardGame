//
//  ViewController.h
//  CardGame
//
//  Created by Admin on 12.09.15.
//  Copyright (c) 2015 Assassin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayedDeck.h"
#import "PlayedCard.h"
#import "CardView.h"
#import "CalculatePlayerCard.h"
#import "CalculatePCCard.h"
#import "AceCalculate.h"

@interface ViewController : UIViewController
- (IBAction)buttonCardCheck:(id)sender;
- (IBAction)buttonResultGame:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonResultGame;
@property (weak, nonatomic) IBOutlet UIButton *buttonCardCheck;

@property (weak, nonatomic) IBOutlet UILabel *labelScorePlayer;
@property (strong, nonatomic) ViewController * reloadData;

@end

