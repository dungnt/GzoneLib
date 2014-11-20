//
//  GzInternetConnection.m
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

#import "GzInternetConnection.h"
static GzInternetConnection *share;
@implementation GzInternetConnection
+(id)ShareIntance{
    if(!share){
        share = (GzInternetConnection*)[GzInternetConnection reachabilityForInternetConnection];
    }
    return share;
}
-(void)CheckInternetStatusWithsuccess:(void (^)(BOOL Status))success{
    if(share.currentReachabilityStatus == NotReachable){
        success(FALSE);
    }
    else if(share.currentReachabilityStatus == ReachableViaWiFi){
        success(TRUE);
    }
    else if(share.currentReachabilityStatus == ReachableViaWWAN){
        success(TRUE);
    }
    else{
        success(FALSE);

    }
}
@end
