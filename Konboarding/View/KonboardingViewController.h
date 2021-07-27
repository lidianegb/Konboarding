//
//  Konboarding.h
//  Konboarding
//
//  Created by Kellyane Nogueira on 21/07/21.
//

#import <UIKit/UIKit.h>
#import "KonboardingViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface KonboardingViewController : UIViewController <UIPageViewControllerDataSource, UIPageViewControllerDelegate>

@property UIPageViewController *onboarding;
@property KonboardingViewModel *viewModel;

@end

NS_ASSUME_NONNULL_END
