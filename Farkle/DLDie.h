//
//  DLDie.h
//  Farkle
//
//  Created by Detroit Labs User on 6/11/14.
//  Copyright (c) 2014 SieglitzMechelle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DLDiceDataController.h"
@interface DLDie : NSObject

@property (nonatomic) BOOL locked;
@property (nonatomic) NSInteger currentValue;
@property (strong, nonatomic) DLDiceDataController *diceModel;

- (void)roll;

@end
