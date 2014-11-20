//
//  NSData+GzAmazon.m
//  AmazonUploadImage
//
//  Created by Nguyen Dung on 20/11/2014.
//  Copyright (c) Năm 2014 Nguyen Dung. All rights reserved.
//

#import "NSData+GzAmazon.h"

@implementation NSData (GzAmazon)
-(void)getAmazoneLinkWithAccess_Key:(NSString *)AccessKey SecretAccess:(NSString *)secretAccess bucketname:(NSString *)bucket subfolder:(NSString *)folder fileName:(NSString *)filename success:(void (^)(NSString * urlImage))success{
    
    AFAmazonS3Manager *s3Manager = [[AFAmazonS3Manager alloc] initWithAccessKeyID:AccessKey secret:secretAccess];
    s3Manager.requestSerializer.region = AFAmazonS3USStandardRegion;
    s3Manager.requestSerializer.bucket = bucket;
    [s3Manager.requestSerializer setValue:@"public-read" forHTTPHeaderField:@"x-amz-acl"];
    [s3Manager.requestSerializer setValue:@"image/png" forHTTPHeaderField:@"Content-Type"];
    [[s3Manager responseSerializer] setAcceptableContentTypes:[NSSet setWithObjects:@"multipart/form-data", @"binary/octet-stream", @"image/png", @"image/jpeg", nil]];
    [s3Manager putObjectWithFileData:self destinationPath:[NSString stringWithFormat:@"%@/%@",folder,filename] parameters:nil progress:^(NSUInteger bytesWritten, long long totalBytesWritten, long long totalBytesExpectedToWrite) {
        NSLog(@"%0.2f%% Uploaded", (totalBytesWritten / (totalBytesExpectedToWrite * 1.0f) * 100));
    } success:^(id responseObject) {
        success([NSString stringWithFormat:@"http://%@.s3.amazonaws.com/%@/%@",bucket,folder,filename]);
    } failure:^(NSError *error) {
        success(nil);
    }];
}
@end
