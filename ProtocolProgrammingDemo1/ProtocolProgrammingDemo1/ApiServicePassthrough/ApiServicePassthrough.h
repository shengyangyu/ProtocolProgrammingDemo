//
//  ApiServicePassthrough.h
//  ProtocolProgrammingDemo
//
//  Created by haijiao on 15/12/20.
//  Copyright © 2015年 olinone. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ApiServiceProtocol <NSObject>

- (void)requestNetWithUrl:(NSURL *)url Param:(NSDictionary *)param;

@end

@protocol ApiGetServiceProtocol <ApiServiceProtocol>

// private functions

@end

@protocol ApiPostServiceProtocol <ApiServiceProtocol>

// private functions

@end

@interface ApiServicePassthrough : NSObject

@property (nonatomic, strong) NSURL        *url;
@property (nonatomic, strong) NSDictionary *param;

/**
 * 获取支持协议的对象
 */
+ (id)getProtocolClass:(Protocol *)tProtocol;

- (instancetype)initWithApiService:(id<ApiServiceProtocol>)apiService;
- (void)execNetRequest;

@end
