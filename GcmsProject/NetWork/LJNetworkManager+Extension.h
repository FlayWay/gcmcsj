//
//  LJNetworkManager+Extension.h
//  GcmsProject
//
//  Created by ljkj on 2018/9/20.
//  Copyright © 2018年 ljkj. All rights reserved.
//

#import "LJNetworkManager.h"

@interface LJNetworkManager (Extension)

-(void)statusList:(void(^)(NSArray *list,BOOL isSuccess))completion;

@end
