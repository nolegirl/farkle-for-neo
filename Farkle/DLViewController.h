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

@interface DLViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *rollTotalLabel;

@property (weak, nonatomic) IBOutlet DLDieView *firstDieView;
@property (weak, nonatomic) IBOutlet DLDieView *secondDieView;
@property (weak, nonatomic) IBOutlet DLDieView *thirdDieView;
@property (weak, nonatomic) IBOutlet DLDieView *fourthDieView;
@property (weak, nonatomic) IBOutlet DLDieView *fifthDieView;
@property (weak, nonatomic) IBOutlet DLDieView *sixthDieView;
@property (strong, nonatomic) IBOutletCollection(DLDieView) NSArray *dieViews;

@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@property (nonatomic) NSInteger currentScore;

@property (weak, nonatomic) IBOutlet UIButton *die1KeepButton;
@property (weak, nonatomic) IBOutlet UIButton *die2KeepButton;
@property (weak, nonatomic) IBOutlet UIButton *die3KeepButton;
@property (weak, nonatomic) IBOutlet UIButton *die4KeepButton;
@property (weak, nonatomic) IBOutlet UIButton *die5KeepButton;
@property (weak, nonatomic) IBOutlet UIButton *die6KeepButton;

@property (nonatomic, strong) NSMutableArray *dice;

@end
