//
//  GzFlurry.m
//  GzoneLib
//
//  Created by Nguyen Dung on 21/11/2014.
//  Copyright (c) Năm 2014 dungnt. All rights reserved.
//

#import "GzFlurry.h"

@implementation GzFlurry
-(void)ConfigFlurryWithApiKey:(NSString *)api_key{
    if(!api_key || api_key.length==0){
        NSLog(@"api key input false");
    }
    [Flurry setSecureTransportEnabled:TRUE];
    [Flurry setCrashReportingEnabled:TRUE];
    [Flurry setBackgroundSessionEnabled:TRUE];
    [Flurry setAppVersion:[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]];
    [Flurry startSession:api_key];
}
@end
