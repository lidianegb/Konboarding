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

  
    PageViewController * pageViewController1 = [[PageViewController alloc] initWithTitle:@"um titulo aqui" text:@"um texto aqui um texto aqui um texto aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui" imageName:@"imageTest"];
    
    pageViewController1.backgroundColor = [UIColor blueColor];
    pageViewController1.titleColor = [UIColor whiteColor];
    pageViewController1.textColor = [UIColor whiteColor];
    pageViewController1.buttonCloseColor = [UIColor whiteColor];
    pageViewController1.buttonPreviewColor = [UIColor whiteColor];
    pageViewController1.buttonNextColor = [UIColor whiteColor];

    
    PageViewController * pageViewController2 = [[PageViewController alloc] initWithTitle:@"um titulo aqui" text:@"um texto aqui um texto aqui um texto aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui" imageName:@"imageTest"];
    
    pageViewController2.backgroundColor = [UIColor systemPinkColor];
    pageViewController2.titleColor = [UIColor whiteColor];
    pageViewController2.textColor = [UIColor whiteColor];
    pageViewController2.buttonCloseColor = [UIColor whiteColor];
    pageViewController2.buttonPreviewColor = [UIColor whiteColor];
    pageViewController2.buttonNextColor = [UIColor whiteColor];
    
    PageViewController * pageViewController3 = [[PageViewController alloc] initWithTitle:@"um titulo aqui" text:@"um texto aqui um texto aqui um texto aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui" imageName:@"imageTest"];
    
    pageViewController3.backgroundColor = [UIColor darkGrayColor];
    pageViewController3.titleColor = [UIColor whiteColor];
    pageViewController3.textColor = [UIColor whiteColor];
    pageViewController3.buttonCloseColor = [UIColor whiteColor];
    pageViewController3.buttonPreviewColor = [UIColor whiteColor];
    pageViewController3.buttonNextColor = [UIColor whiteColor];
    
    
    KonboardingViewController * konboardingViewController = [[KonboardingViewController alloc] initWithContent:@[pageViewController1, pageViewController2, pageViewController3]];
    konboardingViewController.modalInPresentation = YES;
    
    [self.navigationController presentViewController:konboardingViewController animated:YES completion:nil];
}


@end
