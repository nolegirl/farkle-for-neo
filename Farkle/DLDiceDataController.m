//
//  DLDiceDataController.m
//  Farkle
//
//  Created by Detroit Labs User on 6/4/14.
//  Copyright (c) 2014 SieglitzMechelle. All rights reserved.
//

#import "DLDiceDataController.h"

@implementation DLDiceDataController

- (NSInteger)getDiceRoll {
    int roll = (arc4random() % 6) +1;
    return roll;
}

@end
