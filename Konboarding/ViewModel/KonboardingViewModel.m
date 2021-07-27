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
        self.pages = [NSMutableArray new];
    }
    return self;
}

-(void) append:(Page *) page {
    [self.pages addObject:page];
}

-(NSInteger) count {
    return [self.pages count];
}

-(Page *) pageAtIndex: (NSInteger) index {
    return self.pages[index];
}


@end
