//
//  KonboardingViewModel.m
//  Konboarding
//
//  Created by Kellyane Nogueira on 23/07/21.
//

#import "KonboardingViewModel.h"

@implementation KonboardingViewModel

- (instancetype)init {
    self = [super init];
    if (self) {
        self.pages = [NSMutableArray<PageViewModel*> new];
    }
    return self;
}

-(void) append:(PageViewModel *) page {
    [self.pages addObject:page];
}

-(NSInteger) count {
    return [self.pages count];
}

-(PageViewModel *) pageAtIndex: (NSInteger) index {
    return self.pages[index];
}


@end
