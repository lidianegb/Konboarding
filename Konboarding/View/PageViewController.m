//
//  PageViewController.m
//  Konboarding
//
//  Created by Kellyane Nogueira on 21/07/21.
//

#import "PageViewController.h"

@implementation PageViewController


-(instancetype)initWithPage:(PageViewModel *)pageViewModel {
    self = [super init];
    if (self) {
        [self setupSubViews:pageViewModel];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}

-(void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    [self setConstraints];
    [self.delegate setCurrentPage:self];
}

-(void) setBackgroundColor:(UIColor *)backgroundColor {
    self.view.backgroundColor = backgroundColor;
}

-(void) setTitleColor:(UIColor *)titleColor {
    self.titleLabel.textColor = titleColor;
}

-(void) setTextColor:(UIColor *)textColor {
    self.textLabel.textColor = textColor;
}

-(void) setupSubViews: (PageViewModel*) page {
    self.titleLabel = [UILabel new];
    self.titleLabel.text = page.title;
    self.textLabel.numberOfLines = 0;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.titleLabel setFont: [UIFont boldSystemFontOfSize:(32)]];
    self.titleLabel.textColor = [UIColor blackColor];
    
    
    
    self.textLabel = [UILabel new];
    self.textLabel.text = page.text;
    self.textLabel.numberOfLines = 0;
    self.textLabel.textAlignment = NSTextAlignmentCenter;
    self.textLabel.font = [UIFont systemFontOfSize:(17)];
    self.textLabel.textColor = [UIColor blackColor];
   
    
    UIImage *newImage = [UIImage imageNamed:page.imageName];
    self.imageView = [[UIImageView alloc] initWithImage:newImage];
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    self.buttonNext = [UIButton new];
    UIImage *nextImage = [UIImage systemImageNamed:@"arrow.right.circle.fill"];
    [self.buttonNext setImage:nextImage forState:UIControlStateNormal];
    [self.buttonNext addTarget:self action:@selector(next) forControlEvents:UIControlEventTouchUpInside];
    
    self.buttonPreview = [UIButton new];
    UIImage *previewImage = [UIImage systemImageNamed:@"arrow.left.circle.fill"];
    [self.buttonPreview setImage:previewImage forState:UIControlStateNormal];
    [self.buttonPreview addTarget:self action:@selector(preview) forControlEvents:UIControlEventTouchUpInside];
}

- (void) next {
    [_delegate setNextPage:self];
}

- (void) preview {
    [_delegate setPreviewPage:self];
}

- (void)setConstraints {
   
    [self.view addSubview:self.titleLabel];
    [self.titleLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
   
    [self.titleLabel.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:100].active = YES;
    [self.titleLabel.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:16].active = YES;
    [self.titleLabel.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-16].active = YES;

    [self.view addSubview:self.imageView];
    [self.imageView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self.imageView.topAnchor constraintEqualToAnchor:self.titleLabel.bottomAnchor constant:20].active = YES;
    [self.imageView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:16].active = YES;
    [self.imageView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-16].active = YES;
    
   
    [self.view addSubview:self.textLabel];
    [self.textLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self.textLabel.topAnchor constraintEqualToAnchor:self.imageView.bottomAnchor constant:20].active = YES;
    [self.textLabel.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:16].active = YES;
    [self.textLabel.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-16].active = YES;
    
    [self.view addSubview:self.buttonPreview];
    [self.buttonPreview setTranslatesAutoresizingMaskIntoConstraints:NO];

    [self.buttonPreview.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-20].active = YES;
    [self.buttonPreview.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:16].active = YES;
    
    [self.view addSubview:self.buttonNext];
    [self.buttonNext setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self.buttonNext.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-20].active = YES;
    [self.buttonNext.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-16].active = YES;
    
}

- (void)activateButton {
   
    [self.view addSubview:self.button];
    [self.button setTranslatesAutoresizingMaskIntoConstraints:NO];
}

@end
