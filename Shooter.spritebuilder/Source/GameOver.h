//
//  GameOver.h
//  Shooter
//
//  Created by Aravind Vadali on 8/5/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCNode.h"

@interface GameOver : CCNode

-(void)setScore:(int)curScore andHighscore:(int)curHighscore;

@property (strong) CCNode *replayButton;
@property (strong) CCNode *mainScreenButton;

-(void)replay;

@end
