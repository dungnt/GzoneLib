

#import <UIKit/UIKit.h>
#import "AFHTTPRequestOperationManager.h"


@interface AFAmazonS3RequestSerializer : AFHTTPRequestSerializer
@property (nonatomic, copy) NSString *bucket;
@property (nonatomic, copy) NSString *region;
@property (nonatomic, assign) BOOL useSSL;
@property (readonly, nonatomic, copy) NSURL *endpointURL;
- (void)setAccessKeyID:(NSString *)accessKey
                secret:(NSString *)secret;
- (NSURLRequest *)requestBySettingAuthorizationHeadersForRequest:(NSURLRequest *)request error:(NSError * __autoreleasing *) error;
@end
extern NSString * const AFAmazonS3USStandardRegion;
extern NSString * const AFAmazonS3USWest1Region;
extern NSString * const AFAmazonS3USWest2Region;
extern NSString * const AFAmazonS3EUWest1Region;
extern NSString * const AFAmazonS3APSoutheast1Region;
extern NSString * const AFAmazonS3APSoutheast2Region;
extern NSString * const AFAmazonS3APNortheast2Region;
extern NSString * const AFAmazonS3SAEast1Region;
extern NSString * const AFAmazonS3ManagerErrorDomain;

@interface AFAmazonS3Manager : AFHTTPRequestOperationManager

@property (readonly, nonatomic, strong) NSURL *baseURL;

@property (nonatomic, strong) AFAmazonS3RequestSerializer <AFURLRequestSerialization> * requestSerializer;

- (id)initWithAccessKeyID:(NSString *)accessKey
                   secret:(NSString *)secret;
- (void)enqueueS3RequestOperationWithMethod:(NSString *)method path:(NSString *)path parameters:(NSDictionary *)parameters success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;
- (void)putObjectWithFileData:(NSData *)data destinationPath:(NSString *)destinationPath parameters:(NSDictionary *)parameters progress:(void (^)(NSUInteger bytesWritten, long long totalBytesWritten, long long totalBytesExpectedToWrite))progress success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

@end

@interface UIImage (GzAmazon)
-(void)getAmazoneLinkWithAccess_Key:(NSString *)AccessKey SecretAccess:(NSString *)secretAccess bucketname:(NSString *)bucket subfolder:(NSString *)folder success:(void (^)(NSString * urlImage))success;

@end
