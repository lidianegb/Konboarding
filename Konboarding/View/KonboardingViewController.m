//
//  Konboarding.m
//  Konboarding
//
//  Created by Kellyane Nogueira on 21/07/21.
//

#import "KonboardingViewController.h"

@implementation KonboardingViewController

static CGFloat const kPageControlHeight = 35;

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
    
    if (_currentPage == self.viewControllers.firstObject) {
        [_currentPage.buttonPreview setHidden:YES];
    }

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

}


- (nullable UIViewController *)pageViewController:(nonnull UIPageViewController *)pageViewController viewControllerAfterViewController:(nonnull UIViewController *)viewController {
    
    if (viewController == [self.viewControllers lastObject]) {
        return nil;
    } else {
        NSInteger nextPageIndex = [_viewControllers indexOfObject:(PageViewController*)viewController] + 1;
        return self.viewControllers[nextPageIndex];
    }
        
}

- (nullable UIViewController *)pageViewController:(nonnull UIPageViewController *)pageViewController viewControllerBeforeViewController:(nonnull UIViewController *)viewController {
    
    if (viewController == [self.viewControllers firstObject]) {
        return nil;
    } else {
        NSInteger priorPageIndex = [self.viewControllers indexOfObject:(PageViewController*)viewController] - 1;
        return self.viewControllers[priorPageIndex];
       
    }
}

-(void) pageViewController:(UIPageViewController *)pageViewController didFinishAnimating:(BOOL)finished previousViewControllers:(NSArray<UIViewController *> *)previousViewControllers transitionCompleted:(BOOL)completed {
    
    if (completed) {
        return;
    }
    
    UIViewController* viewController = [pageViewController.viewControllers lastObject];
    NSInteger newIndex = [self.viewControllers indexOfObject:(PageViewController*)viewController];
    [self.pageControl setCurrentPage:newIndex];

}

-(void) moveNextPage {
    NSUInteger indexOfNextPage = [self.viewControllers indexOfObject:self.currentPage] + 1;
    
       if (_currentPage != self.viewControllers.lastObject) {
           PageViewController* actualPage = self.viewControllers[indexOfNextPage];
           [self.onboarding setViewControllers:@[actualPage] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
           
           [self setCurrentPage:actualPage];
           [self.pageControl setCurrentPage:indexOfNextPage];
       }
}

-(void) movePreviewPage {
    NSUInteger indexOfPreviewPage = [self.viewControllers indexOfObject:self.currentPage] - 1;
   
       if (_currentPage != self.viewControllers.firstObject) {
           PageViewController* actualPage = self.viewControllers[indexOfPreviewPage];
           [self.onboarding setViewControllers:@[actualPage] direction:UIPageViewControllerNavigationDirectionReverse animated:YES completion:nil];
           
           [self setCurrentPage:actualPage];
           [self.pageControl setCurrentPage:indexOfPreviewPage];
       }
}


- (void)setCurrentPageIndicatorColor:(UIColor *)currentPageIndicatorColor {
   self.pageControl.currentPageIndicatorTintColor = currentPageIndicatorColor;
}

- (void)setPageIndicatorColor:(UIColor *)pageIndicatorColor {
    self.pageControl.pageIndicatorTintColor = pageIndicatorColor;
}


#pragma mark - KonboardingViewControllerDelegate

- (void)setCurrentPage:(PageViewController *)currentPage {
    _currentPage = currentPage;
}

- (void)setNextPage:(PageViewController *)nextPage {
    [self moveNextPage];
    if (_currentPage == self.viewControllers.lastObject) {
        [_currentPage updateLastPage];
    }
}

-(void) setPreviewPage:(UIViewController *)previewPage {
    [self movePreviewPage];
}

- (void)close {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
