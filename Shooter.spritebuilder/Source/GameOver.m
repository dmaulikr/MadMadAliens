//
//  GameOver.m
//  Shooter
//
//  Created by Aravind Vadali on 8/4/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "GameOver.h"
#import "Gameplay.h"

@implementation GameOver
{
    CCLabelTTF *_scoreLabel;
    CCLabelTTF *_highscoreLabel;
    CCLabelTTF *_gameOverLabel;
    
    int score;
    int highScore;
}

-(void)didLoadFromCCB
{
}

-(void)replay
{
    
    CCScene *gameplay = (Gameplay *)[CCBReader loadAsScene:@"Gameplay"];
    [[CCDirector sharedDirector] replaceScene:gameplay];
}

-(void)setScore:(int)curScore andHighscore:(int)curHighscore
{
    score = curScore;
    highScore = curHighscore;
    
    _scoreLabel.string = [NSString stringWithFormat:@"Score: %d", score];
    _highscoreLabel.string = [NSString stringWithFormat:@"High Score: %d", highScore];
}

@end