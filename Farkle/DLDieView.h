//
//  DLDieView.h
//  Farkle
//
//  Created by Detroit Labs User on 6/4/14.
//  Copyright (c) 2014 SieglitzMechelle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DLDieView : UIView

@property (strong, nonatomic) UIImageView *dieImage;

- (void)showDie:(NSInteger)num;

@end
