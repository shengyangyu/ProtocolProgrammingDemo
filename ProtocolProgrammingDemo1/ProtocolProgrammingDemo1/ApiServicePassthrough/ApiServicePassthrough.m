//
//  ApiServicePassthrough.m
//  ProtocolProgrammingDemo
//
//  Created by haijiao on 15/12/20.
//  Copyright © 2015年 olinone. All rights reserved.
//

#import "ApiServicePassthrough.h"

@interface ApiServicePassthrough ()

@property (nonatomic, strong) id<ApiServiceProtocol> apiService;

@end

@implementation ApiServicePassthrough

+ (id)getProtocolClass:(Protocol *)tProtocol {
    NSString *className = NSStringFromProtocol(tProtocol);
    className = [className stringByAppendingString:@"Obj"];
    Class sClass = NSClassFromString(className);
    id sService = [[sClass alloc] init];
    return sService;
}

- (instancetype)initWithApiService:(id<ApiServiceProtocol>)apiService {
    if (self = [super init]) {
        self.apiService = apiService;
    }
    return self;
}


- (void)execNetRequest {
    [self.apiService requestNetWithUrl:self.url Param:self.param];
}

@end
