//
//  NSObject+ApiServiceProtocol.m
//  ProtocolProgrammingDemo
//
//  Created by haijiao on 15/12/20.
//  Copyright © 2015年 olinone. All rights reserved.
//

#import "NSObject+ApiServiceProtocol.h"
#import "ApiServicePassthrough.h"

@implementation NSObject (ApiServiceProtocol)

- (void)requestGetNetWithUrl:(NSURL *)url Param:(NSDictionary *)param {
    
    id<ApiGetServiceProtocol> sService = [ApiServicePassthrough getProtocolClass:@protocol(ApiGetServiceProtocol)];
    
    ApiServicePassthrough *apiServicePassthrough = [[ApiServicePassthrough alloc] initWithApiService:sService];
    apiServicePassthrough.url = url;
    apiServicePassthrough.param = param;
    [apiServicePassthrough execNetRequest];
}

- (void)requestPostNetWithUrl:(NSURL *)url Param:(NSDictionary *)param {

    id<ApiPostServiceProtocol> sService = [ApiServicePassthrough getProtocolClass:@protocol(ApiPostServiceProtocol)];;
    
    ApiServicePassthrough *apiServicePassthrough = [[ApiServicePassthrough alloc] initWithApiService:sService];
    apiServicePassthrough.url = url;
    apiServicePassthrough.param = param;
    [apiServicePassthrough execNetRequest];
}

@end
