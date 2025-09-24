//
//  MHTRunTimeEnvironment.m
//  MHTRunTimeEnvironment
//
//  Created by mangox on 2025/9/24.
//

#import "MHTRunTimeEnvironment.h"

@implementation MHTRunTimeEnvironment

+ (instancetype)sharedInstance {
    static MHTRunTimeEnvironment *_instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!_instance) {
            _instance = [[MHTRunTimeEnvironment alloc] init];
        }
    });
    return _instance;
}

- (NSString *)proxyURL {
    return @"https://xproxy.2cq.com";
}

- (NSString *)resourceURL {
    return @"https://nimg.2cq.com";
}

- (NSString *)nimgURL {
    return @"https://nimg.2cq.com";
}

- (NSString *)avatarURL {
    return @"https://xavatar.2cq.com";
}

- (NSString *)voiceSocketURL {
    return @"https://xvoicesocket.2cq.com:85/voice";
}

- (NSString *)videoSocketURL {
    return @"https://xsocket.2cq.com:91/chat";
}

- (NSString *)gameSocketURL {
    return @"https://xgamesocket.2cq.com:88";
}

- (NSString *)fruitGameSocketURL {
    return @"https://xfruit.2cq.com:90";
}

- (NSString *)webURL {
    return @"https://www.2cq.com";
}

- (NSString *)h5URL {
    return @"https://xm.2cq.com";
}

- (NSString *)imSocketURL {
    return @"https://ximsocket.2cq.com:82/im";
}

- (NSString *)xossimgURL {
    return @"https://xossimg.2cq.com";
}

@end
