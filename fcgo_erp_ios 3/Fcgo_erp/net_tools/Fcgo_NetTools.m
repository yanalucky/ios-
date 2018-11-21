//
//  Fcgo_NetTools.m
//  Fgco_erp
//
//  Created by huafanxiao on 2018/1/30.
//  Copyright © 2018年 huafanxiao. All rights reserved.
//

#import "Fcgo_NetTools.h"
#import "Fcgo_AFTools.h"

@implementation Fcgo_NetTools
+ (void)postRequest:(NSString *)url
         parameters:(NSMutableDictionary *)parameters
            success:(void(^)(id object))successBlock
            failure:(void(^)(NSString *msg))failureBlock {
    if (![Fcgo_Tools isNetworkConnected]) {
        failureBlock(@"亲,没联网啊");
        return;
    }
    if (parameters == nil) {
        parameters = [NSMutableDictionary dictionary];
    }
    Fcgo_AFTools   *manager =[Fcgo_AFTools  sharedClient];
    NSMutableString *temp = [url mutableCopy];
    temp = [temp stringByAppendingString:@"?"].mutableCopy;
    for (id obj in parameters.allKeys) {
        temp = [temp stringByAppendingString:[NSString stringWithFormat:@"%@=%@&",obj,parameters[obj]]].mutableCopy;
    }
    NSLog(@">>>>>>>>get method = %@",[[temp stringByReplacingOccurrencesOfString:@" " withString:@""] stringByReplacingOccurrencesOfString:@"\n" withString:@""]);
    [manager POST:url parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@\n>>responseObject>>>%@",url,responseObject);
        if ([responseObject isKindOfClass:[NSDictionary  class]]) {
            NSDictionary *responseDic = (NSDictionary *)responseObject;
            if ([responseDic objectForKey:@"errorCode"]&&[[responseDic objectForKey:@"errorCode"] integerValue] == 0) {
                //请求成功
                successBlock(responseObject);
            }
            else {
                
            }
        }
        else {
            
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failureBlock) {
            failureBlock(error.description);
        }
    }];
}
@end
