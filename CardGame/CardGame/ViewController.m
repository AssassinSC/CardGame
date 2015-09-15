//
//  ViewController.m
//  CardGame
//
//  Created by Admin on 12.09.15.
//  Copyright (c) 2015 Assassin. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"


@interface ViewController (){
    CGFloat index;
    PlayedDeck * playerDeck;
    NSUInteger cardMass;
    CalculatePCCard * pcCard;
    AceCalculate * aceCount;
    
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    aceCount = [[AceCalculate alloc] init];
    playerDeck = [[PlayedDeck alloc] init];
    index = 0;
    cardMass = 0;
    self.labelScorePlayer.text = @"";
    self.buttonCardCheck.hidden = NO;
    
    
    UIImage * backgroundDeck = [UIImage imageNamed:@"backgroundDeckVertical.jpg"];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:backgroundDeck];
    
    self.buttonResultGame.hidden = YES;
    
}


- (IBAction)buttonCardCheck:(id)sender {
    self.buttonResultGame.hidden = NO;
    if (cardMass <= 21) {
        index = index + 40;
        CGRect rectCard = CGRectMake(5 + index, 400 + index / 4 , 99, 149);
        CardView * cardView = [[CardView alloc] initWithFrame:rectCard];
        cardView.card = [playerDeck drawRandomCard];
        
        
        if (cardView.card.cardMass == 1){
            aceCount.ace = true;
        }

        cardMass = [CalculatePlayerCard addResult:cardMass forCardMass:cardView.card withAce:aceCount];
        if (cardMass > 21) {
            self.labelScorePlayer.text = [NSString stringWithFormat:@"Вы проиграли : %lu",(unsigned long)cardMass];
            [self.view addSubview:cardView];
            self.buttonResultGame.hidden = YES;
            
        } else {
            self.labelScorePlayer.text = [NSString stringWithFormat:@"Вы набрали : %lu",(unsigned long)cardMass];
            [self.view addSubview:cardView];
        }
    }
    if (cardMass == 21) {
        self.buttonCardCheck.hidden = YES;
    }
    
    
}

- (IBAction)buttonResultGame:(id)sender {
    pcCard = [[CalculatePCCard alloc] init];
    [pcCard computer:cardMass cardDeck:playerDeck sender:self];
    self.buttonResultGame.hidden = YES;
    self.buttonCardCheck.hidden = YES;
    
    
}
- (IBAction)buttonRestart:(id)sender {
    
    for (CardView * removeView in [self.view subviews]) {
        if ([removeView isMemberOfClass:[CardView class]] || removeView ==  [[self.view subviews] lastObject] ) {
           [removeView removeFromSuperview];
        }
    }
    
    [self viewDidLoad];
}
@end
