//
//  LJNetworkManager.h
//  GcmsProject
//
//  Created by ljkj on 2018/9/20.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import "AFHTTPSessionManager.h"

typedef NS_ENUM(NSUInteger,HTTPMethod) {
    GET,
    POST
};

@interface LJNetworkManager : AFHTTPSessionManager

+ (instancetype)shared;

- (void)requestMethods:(HTTPMethod)method urlString:(NSString *)urlString params:(NSDictionary *)params completion:(void(^)(id result,BOOL isSuccess))completion;

@end
