//
//  Fcgo_AFTools.m
//  Fgco_erp
//
//  Created by huafanxiao on 2018/1/30.
//  Copyright © 2018年 huafanxiao. All rights reserved.
//

#import "Fcgo_AFTools.h"

@implementation Fcgo_AFTools
+ (instancetype)sharedClient
{
    static Fcgo_AFTools *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[Fcgo_AFTools alloc] initWithBaseURL:nil];
        _sharedClient.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json",@"text/plain",@"text/json",@"text/javascript",@"text/html",nil];
        [_sharedClient.requestSerializer setValue:@"iOS" forHTTPHeaderField:@"User-Agent"];
        _sharedClient.securityPolicy.allowInvalidCertificates = YES;
        _sharedClient.securityPolicy.validatesDomainName = NO;
        _sharedClient.requestSerializer.timeoutInterval=15.0f;
    });
    return _sharedClient;
}
@end
