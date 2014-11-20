//
//  GzInternetConnection.h
//  GzCustomLiblary
//
//  Created by Nguyen Dung on 20/11/2014.
//  Copyright (c) Năm 2014 Nguyen Dung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Reachability.h"
@interface GzInternetConnection : Reachability
+(id)ShareIntance;
-(void)CheckInternetStatusWithsuccess:(void (^)(BOOL Status))success;
@end
