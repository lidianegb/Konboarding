//
//  Konboarding.m
//  Konboarding
//
//  Created by Kellyane Nogueira on 21/07/21.
//

#import "KonboardingViewController.h"
#import "PageViewController.h"

@implementation KonboardingViewController

NSMutableArray<PageViewController *> *pagesViewController;
PageViewModel *viewModel;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
   
    self.onboarding.dataSource = self;
    self.onboarding.delegate = self;
    [self.view addSubview: self.onboarding];
    
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.onboarding = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStylePageCurl navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options: nil];
    }
    return self;
}

- (nullable UIViewController *)pageViewController:(nonnull UIPageViewController *)pageViewController viewControllerAfterViewController:(nonnull UIViewController *)viewController {
    
        Page *page = [[Page alloc] initWithTitle:@"um titulo aqui" text:@"um texto aqui um texto aqui um texto aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui" imageName:@"imageTest"];
    
        PageViewModel *pageViewModel = [[PageViewModel alloc] initWithPage:page];
    
        PageViewController * konboardingViewController = [[PageViewController alloc] initWithPage:pageViewModel];
    
        konboardingViewController.backgroundColor = [UIColor blueColor];
        konboardingViewController.titleColor = [UIColor whiteColor];
        konboardingViewController.textColor = [UIColor whiteColor];
    
    return konboardingViewController;
        
}

- (nullable UIViewController *)pageViewController:(nonnull UIPageViewController *)pageViewController viewControllerBeforeViewController:(nonnull UIViewController *)viewController {
    
        Page *page = [[Page alloc] initWithTitle:@"um titulo aqui" text:@"um texto aqui um texto aqui um texto aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui" imageName:@"imageTest"];
    
        PageViewModel *pageViewModel = [[PageViewModel alloc] initWithPage:page];
    
        PageViewController * konboardingViewController = [[PageViewController alloc] initWithPage:pageViewModel];
    
        konboardingViewController.backgroundColor = [UIColor redColor];
        konboardingViewController.titleColor = [UIColor whiteColor];
        konboardingViewController.textColor = [UIColor whiteColor];
    
    return konboardingViewController;
        
}


@end
