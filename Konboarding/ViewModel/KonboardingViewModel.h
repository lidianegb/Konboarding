//
//  KonboardingViewModel.h
//  Konboarding
//
//  Created by Kellyane Nogueira on 23/07/21.
//

#import <Foundation/Foundation.h>
#import "PageViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface KonboardingViewModel : NSObject

@property NSMutableArray<PageViewModel*> *pages;

-(void) append: (PageViewModel *) page;
-(NSInteger) count;
-(PageViewModel *) pageAtIndex: (NSInteger) index;

@end

NS_ASSUME_NONNULL_END
