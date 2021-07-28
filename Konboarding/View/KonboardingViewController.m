//
//  Konboarding.m
//  Konboarding
//
//  Created by Kellyane Nogueira on 21/07/21.
//

#import "KonboardingViewController.h"

@implementation KonboardingViewController

static CGFloat const kPageControlHeight = 35;


NSMutableArray<PageViewController *> *pagesViewController;
PageViewModel *viewModel;
 
- (instancetype)initWithContent: (NSArray<PageViewController*>*)viewControllers {
 
    self = [super init];
    if (self) {
       
        self.viewControllers = viewControllers;
        self.pageControl = [UIPageControl new];
        self.pageControl.numberOfPages = self.viewControllers.count;
        self.pageControl.userInteractionEnabled = NO;
    
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    [self setupOnboarding];
    
}

- (void)viewWillLayoutSubviews {
    [super viewDidLayoutSubviews];
    CGFloat safedUnderPageControlPadding = 32;
       if (@available(iOS 11.0, *)) {
           safedUnderPageControlPadding += [self.view safeAreaInsets].bottom;
       }
    self.onboarding.view.frame = self.view.frame;
    self.pageControl.frame = CGRectMake(0, CGRectGetMaxY(self.view.frame) - safedUnderPageControlPadding - kPageControlHeight, self.view.frame.size.width, kPageControlHeight);
}

- (void) setupOnboarding {
    self.onboarding = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    for (PageViewController *contentVC in self.viewControllers) {
          contentVC.delegate = self;
      }

    self.currentPage = [self.viewControllers firstObject];
    
    [self.onboarding setViewControllers:@[self.currentPage] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
    self.onboarding.view.backgroundColor = [UIColor clearColor];
    [self addChildViewController: self.onboarding];
    [self.view addSubview:self.onboarding.view];
    [self.onboarding didMoveToParentViewController:self];
    
    self.onboarding.dataSource = self;
    self.onboarding.delegate = self;
    
    [self.view addSubview:self.pageControl];
    self.pageControl.pageIndicatorTintColor = [UIColor grayColor];
    self.pageControl.currentPageIndicatorTintColor = [UIColor blackColor];

}


- (nullable UIViewController *)pageViewController:(nonnull UIPageViewController *)pageViewController viewControllerAfterViewController:(nonnull UIViewController *)viewController {
    
    if (viewController == [self.viewControllers lastObject]) {
        return nil;
    } else {
        NSInteger nextPageIndex = [_viewControllers indexOfObject:viewController] + 1;
        return self.viewControllers[nextPageIndex];
    }
        
}

- (nullable UIViewController *)pageViewController:(nonnull UIPageViewController *)pageViewController viewControllerBeforeViewController:(nonnull UIViewController *)viewController {
    
    if (viewController == [self.viewControllers firstObject]) {
        return nil;
    } else {
        NSInteger priorPageIndex = [self.viewControllers indexOfObject:viewController] - 1;
        return self.viewControllers[priorPageIndex];
       
    }
}

-(void) pageViewController:(UIPageViewController *)pageViewController didFinishAnimating:(BOOL)finished previousViewControllers:(NSArray<UIViewController *> *)previousViewControllers transitionCompleted:(BOOL)completed {
    
    if (completed) {
        return;
    }
    
    UIViewController* viewController = [pageViewController.viewControllers lastObject];
    NSInteger newIndex = [self.viewControllers indexOfObject:viewController];
    [self.pageControl setCurrentPage:newIndex];

}

-(void) moveNextPage {
    NSUInteger indexOfActualPage = [self.viewControllers indexOfObject:self.currentPage];
    NSUInteger indexOfNextPage = indexOfActualPage + 1;

       if (indexOfNextPage < self.viewControllers.count) {
           PageViewController* actualPage = self.viewControllers[indexOfNextPage];
           [self.onboarding setViewControllers:@[actualPage] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
         
           [self.pageControl setCurrentPage:indexOfNextPage];
    
       }
}

-(void) movePreviewPage {
    NSUInteger indexOfPreviewPage = [self.viewControllers indexOfObject:self.currentPage] - 1;
 
       if (indexOfPreviewPage >= 0) {
           [self.onboarding setViewControllers:@[self.viewControllers[indexOfPreviewPage]] direction:UIPageViewControllerNavigationDirectionReverse animated:YES completion:nil];
          
           [self.pageControl setCurrentPage:indexOfPreviewPage];
       }
}

#pragma mark - KonboardingViewControllerDelegate

- (void)setCurrentPage:(PageViewController *)currentPage {
    _currentPage = currentPage;
}

- (void)setNextPage:(PageViewController *)nextPage {
    _upcomingPage = nextPage;
    [self moveNextPage];
}

-(void) setPreviewPage:(UIViewController *)previewPage {
    [self movePreviewPage];
}


@end
