//
//  LJNetworkManager+Extension.m
//  GcmsProject
//
//  Created by ljkj on 2018/9/20.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import "LJNetworkManager+Extension.h"

@implementation LJNetworkManager (Extension)

-(void)statusList:(void(^)(NSArray *list,BOOL isSuccess))completion {
    
    NSString *urlString = @"http://c.m.163.com/recommend/getSubDocPic";
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    [params setValue:@"toutiao" forKey:@"from"];
    [params setValue:@"bjrec_toutiao-1-1111000163-1111000184-1111000176-1111000107-1111000167-1111700000e" forKey:@"prog"];
    [params setValue:@"Gij5jLv/ktb5jsU62yCFzGuXDf4aztPrOBDqUiqS+dmJ5bkPCmLAXAg6gVMAk0d9" forKey:@"devld"];
    [params setValue:@"false" forKey:@"spever"];
    [params setValue:@"/Dj9KNJQX15Ukv7Q+DesuQ==" forKey:@""];
    
    [self requestMethods:GET urlString:urlString params:nil completion:^(id res, BOOL isSuccess) {
        
        NSArray *lists = res[@"T1348647853363"];
        completion(lists,isSuccess);
        
    }];
}

@end
