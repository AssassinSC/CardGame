//
//  CardView.m
//  CardGame
//
//  Created by Admin on 12.09.15.
//  Copyright (c) 2015 Assassin. All rights reserved.
//

#import "CardView.h"

@implementation CardView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void) drawRect:(CGRect)rect{
    UIImage * image = [UIImage imageNamed:@"backgroundCardInto.jpg"];
    UIImageView * cardImage = [[UIImageView alloc]initWithFrame:rect];
    cardImage.image = image;
    
    UILabel * labelContent = [[UILabel alloc] initWithFrame:CGRectMake(2, 2, rect.size.width, 30)];
    labelContent.text = self.card.content;
    
    
    [self addSubview:cardImage];
    [self addSubview:labelContent];
    
}

@end
