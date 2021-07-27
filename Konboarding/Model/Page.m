//
//  Page.m
//  Konboarding
//
//  Created by Kellyane Nogueira on 21/07/21.
//

#import "Page.h"

@implementation Page

- (id)initWithTitle: (NSString*) title text: (NSString*) text imageName:(NSString *)imageName
{
    self = [super init];
    if (self) {
        self.imageName = imageName;
        self.title = title;
        self.text = text;
    }
    return self;
}
@end

