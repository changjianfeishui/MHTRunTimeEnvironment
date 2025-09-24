//
//  MHTRunTimeEnvironment.m
//  MHTRunTimeEnvironment
//
//  Created by mangox on 2025/9/24.
//

# define MHT_DEBUG 1


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
#ifdef MHT_DEBUG
    return @"https://debugxproxy.2cq.com";
#endif
    return @"https://xproxy.2cq.com";
}

- (NSString *)resourceURL {
#ifdef MHT_DEBUG
    return @"https://debugximg.2cq.com";
#endif
    return @"https://nimg.2cq.com";
}

- (NSString *)nimgURL {
    return @"https://nimg.2cq.com";
}

- (NSString *)avatarURL {
#ifdef MHT_DEBUG
    return @"https://xdebugxavatar.2cq.com";
#endif
    return @"https://xavatar.2cq.com";
}

- (NSString *)voiceSocketURL {
#ifdef MHT_DEBUG
    return @"https://debugxvoicesocket.2cq.com:85/voice";
#endif
    return @"https://xvoicesocket.2cq.com:85/voice";
}

- (NSString *)videoSocketURL {
#ifdef MHT_DEBUG
    return @"https://debugxsocket.2cq.com:91/chat";
#endif
    return @"https://xsocket.2cq.com:91/chat";
}

- (NSString *)gameSocketURL {
#ifdef MHT_DEBUG
    return @"https://debugxgamesocket.2cq.com:88";
#endif
    return @"https://xgamesocket.2cq.com:88";
}

- (NSString *)fruitGameSocketURL {
#ifdef MHT_DEBUG
    return @"https://debugxfruit.2cq.com:90";
#endif
    return @"https://xfruit.2cq.com:90";
}

- (NSString *)webURL {
#ifdef MHT_DEBUG
    return @"https://debug.2cq.com";
#endif
    return @"https://www.2cq.com";
}

- (NSString *)h5URL {
#ifdef MHT_DEBUG
    return @"https://debugxm.2cq.com";
#endif
    return @"https://xm.2cq.com";
}

- (NSString *)imSocketURL {
#ifdef MHT_DEBUG
    return @"https://debugximsocket.2cq.com:82/im";
#endif
    return @"https://ximsocket.2cq.com:82/im";
}

- (NSString *)xossimgURL {
    return @"https://xossimg.2cq.com";
}

- (NSString *)appId {
    return @"1019";
}

- (NSString *)pid {
    return @"8200";
}

- (NSString *)sid {
    return @"1";
}
@end
