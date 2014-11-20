//
//  GzCrashLogMessage.m
//  GzCustomLiblary
//
//  Created by Nguyen Dung on 20/11/2014.
//  Copyright (c) Năm 2014 Nguyen Dung. All rights reserved.
//

#import "GzCrashLogMessage.h"
#import <Parse/Parse.h>
static GzCrashLogMessage *share;
@implementation GzCrashLogMessage

+(id)ShareManager{
    if(!share){
        share = [[GzCrashLogMessage alloc]init];
        [Parse setApplicationId:@"xjbhzxxbxuOybVT8lhlWBTb6AX0JJ99lA3YsRNR1"
                      clientKey:@"tCBvtzztHqUGxAyLOduSw5P99iYp5dN6ZAmRFk4h"];
    }
    return share;
}
+(id)ShareManagerWithApplicationId:(NSString *)ApplicationId clientKey:(NSString *)clientKey{
    if(!share){
        share = [[GzCrashLogMessage alloc]init];
        [Parse setApplicationId:ApplicationId clientKey:clientKey];
    }
    return share;
}
-(void)StoreCrashLogWithClassname:(NSString *)classname crashmessage:(NSString *)crashMessage{
    NSString *DBname = [NSString stringWithFormat:@"CrashReport_%@",[NSBundle mainBundle].infoDictionary[@"CFBundleExecutable"]];
    
    PFObject *crash = [PFObject objectWithClassName:DBname];
    crash[@"AppName"]       = [NSBundle mainBundle].infoDictionary[@"CFBundleExecutable"];
    crash[@"ClassName"]     = classname;
    crash[@"VersionApp"]    = [NSString stringWithFormat:@"%@",[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]];
    crash[@"CrashMessage"]  = crashMessage;
    crash[@"BuildVersion"]  = [NSBundle mainBundle].infoDictionary[@"CFBundleVersion"];
    crash[@"deviceName"]    = [[UIDevice currentDevice] name];
    crash[@"Ver_ios"]       = [[UIDevice currentDevice] systemVersion];
    [crash saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        NSLog(@"Done Background Save");
    }];
    
}
-(void)GetAllCrashLog{
    NSString *DBname = [NSString stringWithFormat:@"CrashReport_%@",[NSBundle mainBundle].infoDictionary[@"CFBundleExecutable"]];
    PFQuery *query = [PFQuery queryWithClassName:DBname];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        for (PFObject *object in objects) {
            NSLog(@"\n--------------------------------------------- \nCrashFunction : %@ \nCrashMessage  : %@ \nDevice Name   : %@\nIOSVer        : %@ \nBuildVersion  : %@\nVersionApp    : %@\n---------------------------------------------",[object objectForKey:@"ClassName"],[object objectForKey:@"CrashMessage"],[object objectForKey:@"deviceName"],[object objectForKey:@"Ver_ios"],[object objectForKey:@"BuildVersion"],[object objectForKey:@"VersionApp"]);
        }
    }];
    
}
-(void)GetAllCrashLogWithVersionApp:(NSString *)version{
    NSString *DBname = [NSString stringWithFormat:@"CrashReport_%@",[NSBundle mainBundle].infoDictionary[@"CFBundleExecutable"]];
    PFQuery *query = [PFQuery queryWithClassName:DBname];
    [query whereKey:@"VersionApp" equalTo:version];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        for (PFObject *object in objects) {
            NSLog(@"\n--------------------------------------------- \nCrashFunction : %@ \nCrashMessage  : %@ \nDevice Name   : %@\nIOSVer        : %@ \nBuildVersion  : %@\nVersionApp    : %@\n---------------------------------------------",[object objectForKey:@"ClassName"],[object objectForKey:@"CrashMessage"],[object objectForKey:@"deviceName"],[object objectForKey:@"Ver_ios"],[object objectForKey:@"BuildVersion"],[object objectForKey:@"VersionApp"]);
        }
    }];
}
-(void)GetAllCrashLogWithBuildVersion:(NSString *)version{
    NSString *DBname = [NSString stringWithFormat:@"CrashReport_%@",[NSBundle mainBundle].infoDictionary[@"CFBundleExecutable"]];
    PFQuery *query = [PFQuery queryWithClassName:DBname];
    [query whereKey:@"BuildVersion" equalTo:version];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        for (PFObject *object in objects) {
            NSLog(@"\n--------------------------------------------- \nCrashFunction : %@ \nCrashMessage  : %@ \nDevice Name   : %@\nIOSVer        : %@ \nBuildVersion  : %@\nVersionApp    : %@\n---------------------------------------------",[object objectForKey:@"ClassName"],[object objectForKey:@"CrashMessage"],[object objectForKey:@"deviceName"],[object objectForKey:@"Ver_ios"],[object objectForKey:@"BuildVersion"],[object objectForKey:@"VersionApp"]);
        }
    }];
}
-(void)GetAllCrashLogWithDeviceName:(NSString *)version{
    NSString *DBname = [NSString stringWithFormat:@"CrashReport_%@",[NSBundle mainBundle].infoDictionary[@"CFBundleExecutable"]];
    PFQuery *query = [PFQuery queryWithClassName:DBname];
    [query whereKey:@"deviceName" containsString:version];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        for (PFObject *object in objects) {
            NSLog(@"\n--------------------------------------------- \nCrashFunction : %@ \nCrashMessage  : %@ \nDevice Name   : %@\nIOSVer        : %@ \nBuildVersion  : %@\nVersionApp    : %@\n---------------------------------------------",[object objectForKey:@"ClassName"],[object objectForKey:@"CrashMessage"],[object objectForKey:@"deviceName"],[object objectForKey:@"Ver_ios"],[object objectForKey:@"BuildVersion"],[object objectForKey:@"VersionApp"]);
        }
    }];
}
-(void)GetAllCrashLogWithIosVersion:(NSString *)version{
    NSString *DBname = [NSString stringWithFormat:@"CrashReport_%@",[NSBundle mainBundle].infoDictionary[@"CFBundleExecutable"]];
    PFQuery *query = [PFQuery queryWithClassName:DBname];
    [query whereKey:@"Ver_ios" equalTo:version];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        for (PFObject *object in objects) {
            NSLog(@"\n--------------------------------------------- \nCrashFunction : %@ \nCrashMessage  : %@ \nDevice Name   : %@\nIOSVer        : %@ \nBuildVersion  : %@\nVersionApp    : %@\n---------------------------------------------",[object objectForKey:@"ClassName"],[object objectForKey:@"CrashMessage"],[object objectForKey:@"deviceName"],[object objectForKey:@"Ver_ios"],[object objectForKey:@"BuildVersion"],[object objectForKey:@"VersionApp"]);
        }
    }];
}
@end
