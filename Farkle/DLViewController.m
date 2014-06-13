//
//  DLViewController.m
//  Farkle
//
//  Created by Detroit Labs User on 6/4/14.
//  Copyright (c) 2014 SieglitzMechelle. All rights reserved.
//

#import "DLViewController.h"

@interface DLViewController ()

@property (nonatomic) BOOL die1KeepButtonSelected;
@property (nonatomic) BOOL die2KeepButtonSelected;
@property (nonatomic) BOOL die3KeepButtonSelected;
@property (nonatomic) BOOL die4KeepButtonSelected;
@property (nonatomic) BOOL die5KeepButtonSelected;
@property (nonatomic) BOOL die6KeepButtonSelected;

@end

@implementation DLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.dice = [[NSMutableArray alloc] init];
    for (int i = 1; i<=6; i++) {
        DLDie *die = [[DLDie alloc] init];
        [self.dice addObject:die];
    }
}

- (IBAction)rollButtonClicked:(id)sender {
    
    //TESTING
    _currentScore = 0;
    
    
    for (DLDie *die in self.dice) {
        [die roll];
    }
    
    [self fillViews];
    
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %ld", (long)_currentScore];
}

//- (NSArray *)getDice {
//    NSMutableArray *values = [[NSMutableArray alloc] init];
//    
//    for (NSInteger i = 0; i < 6; i++) {
//        NSNumber *die = @([self.diceModel getDiceRoll]);
//        [values addObject:die];
//    }
//    return values;
//}

- (void)fillViews {
    for (NSInteger i = 0; i < 6; i++) {
        DLDieView *dieView = [self.dieViews objectAtIndex:i];
        DLDie *die = [self.dice objectAtIndex:i];
        [dieView showDie:[die currentValue]];
    }
}

//
//- (NSInteger)numberOfMatches:(NSArray*)dice matches:(NSInteger)number {
//    NSInteger numberOfMatches = 0;
//    
//    for (NSNumber *die in dice) {
//        if ([die integerValue] == number) {
//            numberOfMatches++;
//        }
//    }
//    return numberOfMatches;
//}
//
//- (NSInteger)getScore:(NSInteger)numberOfMatches number:(NSInteger)die {
//    
//    if (numberOfMatches >= 3) {
//        return [self getScoreForMoreThanThreeMatches:numberOfMatches number:die];
//    }
//    
//    else if (die == 1) {
//        return numberOfMatches * 100;
//    }
//    
//    else if (die == 5) {
//        return numberOfMatches * 50;
//    }
//    
//    else return 0;
//}
//
//- (NSInteger)getScoreForMoreThanThreeMatches:(NSInteger)numberOfMatches number:(NSInteger)die {
//    NSInteger scoreConstant = 0;
//    switch(die) {
//        case 1:
//            scoreConstant = 300;
//            break;
//        case 2:
//            scoreConstant = 200;
//            break;
//        case 3:
//            scoreConstant = 300;
//            break;
//        case 4:
//            scoreConstant = 400;
//            break;
//        case 5:
//            scoreConstant = 500;
//            break;
//        case 6:
//            scoreConstant = 600;
//            break;
//    }
//    NSInteger multiplier = numberOfMatches - 2;
//    NSInteger score = multiplier * scoreConstant;
//    
//    return score;
//}

- (IBAction)dieKeepButtonSelected:(id)sender
{
    NSInteger tag = [sender tag] -1;
    DLDie *currentDie = [self.dice objectAtIndex:tag];
    //Add the score logic here... 
    if (currentDie.locked == NO) {
        currentDie.locked = YES;
        [sender setBackgroundColor:[UIColor redColor]];
        [sender setTitle:@"Locked" forState:UIControlStateNormal];
    } else {
        currentDie.locked = NO;
        [sender setBackgroundColor:[UIColor clearColor]];
        [sender setTitle:@"Lock" forState:UIControlStateNormal];
        
    }
    
}

@end