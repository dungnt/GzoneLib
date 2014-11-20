//
//  GzCrashLogMessage.h
//  GzCustomLiblary
//
//  Created by Nguyen Dung on 20/11/2014.
//  Copyright (c) Năm 2014 Nguyen Dung. All rights reserved.
//
/*||||||||||||||||||
 ||               ||
 ||  Dungnt Gzone ||
 ||               ||
 *|||||||||||||||||*/
#import <Foundation/Foundation.h>
@class Parse;
@interface GzCrashLogMessage : NSObject
+(id)ShareManager;
//===========================================================
//  Application ID Và Client sử dụng Parse
//===========================================================
+(id)ShareManagerWithApplicationId:(NSString *)ApplicationId clientKey:(NSString *)clientKey;
@property(nonatomic,retain)Parse *parse;


-(void)StoreCrashLogWithClassname:(NSString *)classname crashmessage:(NSString *)crashMessage;
-(void)GetAllCrashLog;
-(void)GetAllCrashLogWithVersionApp:(NSString *)version;
-(void)GetAllCrashLogWithBuildVersion:(NSString *)version;
-(void)GetAllCrashLogWithDeviceName:(NSString *)version;
//===========================================================
//  iPhone , iPad , iPod , .....
//===========================================================
-(void)GetAllCrashLogWithIosVersion:(NSString *)version;
@end
