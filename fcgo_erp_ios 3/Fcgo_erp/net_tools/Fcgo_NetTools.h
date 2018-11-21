//
//  Fcgo_NetTools.h
//  Fgco_erp
//
//  Created by huafanxiao on 2018/1/30.
//  Copyright © 2018年 huafanxiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fcgo_NetTools : NSObject
+ (void)postRequest:(NSString *)url
parametersContentCommon:(NSMutableDictionary *)parameters
            success:(void(^)(id object))successBlock
            failure:(void(^)(NSString *msg))failureBlock;
@end
