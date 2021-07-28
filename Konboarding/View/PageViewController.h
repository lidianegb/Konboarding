//
//  PageViewController.h
//  Konboarding
//
//  Created by Kellyane Nogueira on 21/07/21.
//

#import <UIKit/UIKit.h>
#import "PageViewModel.h"
#import "KonboardingViewControllerDelegate.h"


NS_ASSUME_NONNULL_BEGIN

@interface PageViewController : UIViewController

@property UILabel *titleLabel;
@property UIImageView *imageView;
@property UILabel *textLabel;
@property UIButton *button;
@property UIButton *buttonNext;
@property UIButton *buttonPreview;
@property BOOL hasButtonAction;
@property (nonatomic) UIColor *backgroundColor;
@property (nonatomic) UIColor *titleColor;
@property (nonatomic) UIColor *textColor;
@property (nonatomic, weak) UIViewController<KonboardingViewControllerDelegate> *delegate;

-(instancetype) initWithPage: (PageViewModel*) pageViewModel;

@end

NS_ASSUME_NONNULL_END
