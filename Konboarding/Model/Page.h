//
//  Page.h
//  Konboarding
//
//  Created by Kellyane Nogueira on 22/07/21.
//
#import <Foundation/Foundation.h>

@interface Page : NSObject

-(id) initWithTitle: (NSString*) title text: (NSString*) text imageName: (NSString*) imageName;
@property NSString *title;
@property NSString *text;
@property NSString *imageName;

@end
