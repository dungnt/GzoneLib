//
//  GzFlurry.h
//  GzoneLib
//
//  Created by Nguyen Dung on 21/11/2014.
//  Copyright (c) Năm 2014 dungnt. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Flurry.h"

@interface GzFlurry : NSObject

+(id)ShareManager;

//===========================================================
//  Start Secssion With API KEY
//===========================================================

-(void)ConfigFlurryWithApiKey:(NSString *)api_key;

@end
