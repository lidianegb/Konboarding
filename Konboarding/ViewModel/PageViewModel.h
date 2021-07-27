//
//  PageViewModel.h
//  Konboarding
//
//  Created by Lidiane Gomes Barbosa on 26/07/21.
//

#import <Foundation/Foundation.h>
#import "PageViewModel.h"
#import "Page.h"
NS_ASSUME_NONNULL_BEGIN

@interface PageViewModel : NSObject

-(instancetype) initWithPage: (Page*) newPage;
-(NSString*) title;
-(NSString*) text;
-(NSString*) imageName;

@end

NS_ASSUME_NONNULL_END
