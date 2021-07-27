//
//  KonboardingViewModel.h
//  Konboarding
//
//  Created by Kellyane Nogueira on 23/07/21.
//

#import <Foundation/Foundation.h>
#import "Page.h"

NS_ASSUME_NONNULL_BEGIN

@interface KonboardingViewModel : NSObject

@property NSMutableArray<Page*> *pages;

-(void) append: (Page *) page;
-(NSInteger) count;
-(Page *) pageAtIndex: (NSInteger) index;

@end

NS_ASSUME_NONNULL_END
