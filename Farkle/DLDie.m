//
//  DLDie.m
//  Farkle
//
//  Created by Detroit Labs User on 6/11/14.
//  Copyright (c) 2014 SieglitzMechelle. All rights reserved.
//

#import "DLDie.h"

@implementation DLDie

- (void)roll {
    if (!self.locked) {
        self.diceModel = [[DLDiceDataController alloc] init];
        NSInteger rollValue = [self.diceModel getDiceRoll];
        self.currentValue = rollValue;
    }
    else {
        
    }
}

@end
