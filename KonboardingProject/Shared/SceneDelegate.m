//
//  SceneDelegate.m
//  KonboardingProject
//
//  Created by Kellyane Nogueira on 21/07/21.
//

#import "SceneDelegate.h"
#import "KonboardingViewController.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    
   
    UIWindowScene * windowScene = [[UIWindowScene alloc] initWithSession:session connectionOptions:connectionOptions];
    
    Page *page1 = [[Page alloc] initWithTitle:@"um titulo aqui" text:@"um texto aqui um texto aqui um texto aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui" imageName:@"imageTest"];

    PageViewModel *pageViewModel1 = [[PageViewModel alloc] initWithPage:page1];
  
    PageViewController * pageViewController1 = [[PageViewController alloc] initWithPage:pageViewModel1];
    pageViewController1.backgroundColor = [UIColor blueColor];
    pageViewController1.titleColor = [UIColor whiteColor];
    pageViewController1.textColor = [UIColor whiteColor];
    

    Page *page2 = [[Page alloc] initWithTitle:@"um titulo aqui" text:@"um texto aqui um texto aqui um texto aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui" imageName:@"imageTest"];
    
    PageViewModel *pageViewModel2 = [[PageViewModel alloc] initWithPage:page2];
    
    PageViewController * pageViewController2 = [[PageViewController alloc] initWithPage:pageViewModel2];
    pageViewController2.backgroundColor = [UIColor whiteColor];
    pageViewController2.titleColor = [UIColor blackColor];
    pageViewController2.textColor = [UIColor blackColor];
    
    Page *page3 = [[Page alloc] initWithTitle:@"um titulo aqui" text:@"um texto aqui um texto aqui um texto aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui aqui um texto aqui um texto aqui" imageName:@"imageTest"];
    
    PageViewModel *pageViewModel3 = [[PageViewModel alloc] initWithPage:page3];
    
    PageViewController * pageViewController3 = [[PageViewController alloc] initWithPage:pageViewModel3];
    pageViewController3.backgroundColor = [UIColor darkGrayColor];
    pageViewController3.titleColor = [UIColor whiteColor];
    pageViewController3.textColor = [UIColor whiteColor];
    
    
    KonboardingViewController * konboardingViewController = [[KonboardingViewController alloc] initWithContent:@[pageViewController1, pageViewController2, pageViewController3]];
    
    
  
    
    self.window = [[UIWindow alloc] initWithWindowScene:windowScene];
    self.window.rootViewController = konboardingViewController;
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}

@end
