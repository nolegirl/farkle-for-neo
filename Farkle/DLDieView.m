//
//  DLDieView.m
//  Farkle
//
//  Created by Detroit Labs User on 6/4/14.
//  Copyright (c) 2014 SieglitzMechelle. All rights reserved.
//

#import "DLDieView.h"

@implementation DLDieView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        //Initialization code
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    //Drawing code
}

- (void)showDie:(NSInteger)i {
    if (self.dieImage == nil) {
        self.dieImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 80, 80)];
        [self addSubview:self.dieImage];
    }
    NSString *fileName = [NSString stringWithFormat:@"dice%d.png", i];
    
    self.dieImage.image = [UIImage imageNamed:fileName];
}

@end
