//
//  PageViewModel.m
//  Konboarding
//
//  Created by Lidiane Gomes Barbosa on 26/07/21.
//

#import "PageViewModel.h"

@implementation PageViewModel

NSString *title;
NSString *text;
NSString *imageName;

-(instancetype) initWithPage: (Page*) newPage
{
    self = [super init];
    if (self) {
        title = newPage.title;
        text = newPage.text;
        imageName = newPage.imageName;
    }
    return self;
}

- (NSString *)title {
    return title;
}

- (NSString *)imageName {
    return imageName;
}

- (NSString *)text {
    return text;
}


@end
