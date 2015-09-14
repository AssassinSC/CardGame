//
//  CalculatePCCard.m
//  CardGame
//
//  Created by Admin on 13.09.15.
//  Copyright (c) 2015 Assassin. All rights reserved.
//

#import "CalculatePCCard.h"

@interface CalculatePCCard (){
    NSUInteger index;
    NSUInteger cardMass;
    UILabel * labelPCScore;
    AceCalculate * aceCount;
}
@end

@implementation CalculatePCCard

-(void) computer:(NSUInteger)playerScore cardDeck:(PlayedDeck *)cardDeck sender:(UIViewController *) sender{
    
    
    aceCount = [[AceCalculate alloc] init];
    
    while (cardMass < playerScore && cardMass <= 21) {
        
    
        index = index + 40;
        CGRect rectCard = CGRectMake(5 + index , 20 + index  / 4 , 99, 149);
        CardView * cardView = [[CardView alloc] initWithFrame:rectCard];
        cardView.card = [cardDeck drawRandomCard];
        [sender.view addSubview:cardView];
    
        if (cardView.card.cardMass == 1){
            aceCount.ace = true;
        }
    
        cardMass = [CalculatePlayerCard addResult:cardMass forCardMass:cardView.card withAce:aceCount];
    
    }
    
    labelPCScore = [[UILabel alloc] initWithFrame:CGRectMake(94, 300, 156, 21)];
    labelPCScore.textColor = [UIColor whiteColor];

    if (cardMass > playerScore && cardMass <= 21) {
               labelPCScore.text = [NSString stringWithFormat:@"Компьютер : %lu",(unsigned long)cardMass];
                [sender.view addSubview:labelPCScore];

    } else {
        labelPCScore.text = [NSString stringWithFormat:@"Компьютер: %lu",(unsigned long)cardMass];
        [sender.view addSubview:labelPCScore];
    }
  

    
}
@end
