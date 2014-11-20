//
//  NSData+GzAmazon.h
//  AmazonUploadImage
//
//  Created by Nguyen Dung on 20/11/2014.
//  Copyright (c) Năm 2014 Nguyen Dung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIImage+GzAmazon.h"
@interface NSData (GzAmazon)

-(void)getAmazoneLinkWithAccess_Key:(NSString *)AccessKey SecretAccess:(NSString *)secretAccess bucketname:(NSString *)bucket subfolder:(NSString *)folder fileName:(NSString *)filename success:(void (^)(NSString * urlImage))success;

@end
