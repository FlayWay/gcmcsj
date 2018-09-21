//
//  LJNetworkManager.m
//  GcmsProject
//
//  Created by ljkj on 2018/9/20.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import "LJNetworkManager.h"

static LJNetworkManager *manager = nil;



@implementation LJNetworkManager


+ (instancetype)shared {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[LJNetworkManager alloc]init];
    });
    return manager;
}

- (void)requestMethods:(HTTPMethod)method urlString:(NSString *)urlString params:(NSDictionary *)params completion:(void(^)(id result,BOOL isSuccess))completion {
    
     void (^success)(NSURLSessionDataTask *task,id response) = ^(NSURLSessionDataTask *  task, id response) {
       
         completion(response,YES);
     };
    
    void (^failure)(NSURLSessionDataTask *task,NSError *error) = ^(NSURLSessionDataTask *task,NSError *error) {
      
        completion(nil,NO);
    };
    
    if (method == GET) {
        
        [manager GET:urlString parameters:params progress:nil success:success failure:failure];
    }else {
        
        [manager POST:urlString parameters:params progress:nil success:success failure:failure];
    }
    
}


@end
