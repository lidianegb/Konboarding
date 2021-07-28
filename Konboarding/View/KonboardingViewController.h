//
//  Konboarding.h
//  Konboarding
//
//  Created by Kellyane Nogueira on 21/07/21.
//

#import <UIKit/UIKit.h>
#import "KonboardingViewModel.h"
#import "PageViewController.h"
#import "KonboardingViewControllerDelegate.h"

NS_ASSUME_NONNULL_BEGIN


@interface KonboardingViewController : UIViewController <UIPageViewControllerDataSource, UIPageViewControllerDelegate, KonboardingViewControllerDelegate>

@property UIPageViewController *onboarding;
@property KonboardingViewModel *viewModel;
@property (nonatomic, strong) NSArray<PageViewController*> *viewControllers;
@property (nonatomic, strong) UIPageControl *pageControl;
@property (nonatomic, strong) PageViewController *currentPage;

-(instancetype)initWithContent: (NSArray<PageViewController*>*)viewControllers;
-(void) moveNextPage;
@end

NS_ASSUME_NONNULL_END
