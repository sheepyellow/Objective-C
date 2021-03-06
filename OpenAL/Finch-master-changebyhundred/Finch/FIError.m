//  作者:香蕉大大  简书地址：http://www.jianshu.com/users/a3ae6d7c68b6/latest_articles
//  微博:http://weibo.com/u/6013257513?is_all=1
//  QQ技术讨论交流群 : 365204530
//  微信个人技术公众号：大大家的IOS说（一起用碎片时间学习最新最有用的IOS资料）
//  微信个人账号：hundreda

#import "FIError.h"

NSString *const FIErrorDomain = @"FIErrorDomain";
NSString *const FIOpenALErrorCodeKey = @"FIOpenALErrorCodeKey";

@implementation FIError

+ (id) errorWithMessage: (NSString*) message code: (NSUInteger) errorCode
{
    return [NSError errorWithDomain:FIErrorDomain code:errorCode userInfo:@{
        NSLocalizedDescriptionKey : message
    }];
}

+ (id) errorWithMessage: (NSString*) message code: (NSUInteger) errorCode OpenALCode: (ALenum) underlyingCode
{
    return [NSError errorWithDomain:FIErrorDomain code:errorCode userInfo:@{
        NSLocalizedDescriptionKey : message,
        FIOpenALErrorCodeKey : @(underlyingCode)
    }];
}

@end
