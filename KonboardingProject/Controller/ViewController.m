//
//  ViewController.m
//  KonboardingProject
//
//  Created by Kellyane Nogueira on 21/07/21.
//

#import "ViewController.h"
#import "KonboardingViewController.h"


@implementation ViewController

BOOL onboardingPresented = NO;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.cyanColor;
    
    if (!onboardingPresented) {
        onboardingPresented = YES;
        [self presentOnboarding];
    }
  
}

-(void) presentOnboarding {
    Page *page1 = [[Page alloc] initWithTitle:@"um titulo aqui" text:@"um texto aqui um texto aqui um texto aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui" imageName:@"imageTest"];

    PageViewModel *pageViewModel1 = [[PageViewModel alloc] initWithPage:page1];
  
    PageViewController * pageViewController1 = [[PageViewController alloc] initWithPage:pageViewModel1];
    pageViewController1.backgroundColor = [UIColor blueColor];
    pageViewController1.titleColor = [UIColor whiteColor];
    pageViewController1.textColor = [UIColor whiteColor];
    

    Page *page2 = [[Page alloc] initWithTitle:@"um titulo aqui" text:@"um texto aqui um texto aqui um texto aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui" imageName:@"imageTest"];
    
    PageViewModel *pageViewModel2 = [[PageViewModel alloc] initWithPage:page2];
    
    PageViewController * pageViewController2 = [[PageViewController alloc] initWithPage:pageViewModel2];
    pageViewController2.backgroundColor = [UIColor whiteColor];
    pageViewController2.titleColor = [UIColor blackColor];
    pageViewController2.textColor = [UIColor blackColor];
    
    Page *page3 = [[Page alloc] initWithTitle:@"um titulo aqui" text:@"um texto aqui um texto aqui um texto aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui" imageName:@"imageTest"];
    
    PageViewModel *pageViewModel3 = [[PageViewModel alloc] initWithPage:page3];
    
    PageViewController * pageViewController3 = [[PageViewController alloc] initWithPage:pageViewModel3];
    pageViewController3.backgroundColor = [UIColor darkGrayColor];
    pageViewController3.titleColor = [UIColor whiteColor];
    pageViewController3.textColor = [UIColor whiteColor];
    
    
    KonboardingViewController * konboardingViewController = [[KonboardingViewController alloc] initWithContent:@[pageViewController1, pageViewController2, pageViewController3]];
    konboardingViewController.modalInPresentation = YES;
    [self.navigationController presentViewController:konboardingViewController animated:YES completion:nil];
}


@end
