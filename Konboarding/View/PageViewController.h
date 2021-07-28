//
//  PageViewController.h
//  Konboarding
//
//  Created by Kellyane Nogueira on 21/07/21.
//

#import <UIKit/UIKit.h>
#import "KonboardingViewControllerDelegate.h"


NS_ASSUME_NONNULL_BEGIN

@interface PageViewController : UIViewController

@property UILabel *titleLabel;
@property UIImageView *imageView;
@property UILabel *textLabel;
@property UIButton *buttonNext;
@property UIButton *buttonPreview;
@property UIButton *buttonClose;
@property NSString *titleDescription;
@property NSString *textDescription;
@property NSString *imageName;



@property (nonatomic) UIColor *buttonNextColor;
@property (nonatomic) UIColor *buttonPreviewColor;
@property (nonatomic) UIColor *buttonCloseColor;
@property (nonatomic) UIColor *backgroundColor;
@property (nonatomic) UIColor *titleColor;
@property (nonatomic) UIColor *textColor;

@property (nonatomic, weak) UIViewController<KonboardingViewControllerDelegate> *delegate;

//-(instancetype) initWithPage: (Page*) pageViewModel;
-(instancetype) initWithTitle: (NSString*) title text: (NSString*) text imageName: (NSString*) imageName;
-(void) updateLastPage;

@end

NS_ASSUME_NONNULL_END
