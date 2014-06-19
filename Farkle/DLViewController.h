//
//  DLViewController.h
//  Farkle
//
//  Created by Detroit Labs User on 6/4/14.
//  Copyright (c) 2014 SieglitzMechelle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DLDieView.h"
#import "DLDie.h"  
#import "DLPlayer.h"

@interface DLViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *player1ScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *player2ScoreLabel;

@property (strong, nonatomic) IBOutletCollection(DLDieView) NSArray *dieViews;

@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@property (nonatomic) NSInteger currentScore;

@property (nonatomic, strong) NSMutableArray *dice;
@property (nonatomic, strong) NSMutableArray *keptDice;
@end
