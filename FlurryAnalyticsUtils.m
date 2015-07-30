
#import "FlurryAnalyticsUtils.h"
#import "Flurry.h"

@implementation FlurryAnalyticsUtils

+ (void)startAppSession
{
    [Flurry startSession:@"SBM35V2BK2WZXX83P7F9"];
}

+ (void)startWatchExtensionSession
{
    
}

+ (void)logError:(NSString *)errorName message:(NSString *)message exception:(NSException *)exception
{
    [Flurry logError:errorName message:message exception:exception];
}

+ (void)logEvent:(NSString *)eventName
{
    [Flurry logEvent:eventName];
}

+ (void)logEvent:(NSString *)eventName timed:(BOOL)track
{
    [Flurry logEvent:eventName timed:track];
}

+ (void)endTimedEvent:(NSString *)eventName
{
    [self endTimedEvent:eventName withParameters:nil];
}

+ (void)endTimedEvent:(NSString *)eventName withParameters:(NSDictionary *)dictionary
{
    [Flurry endTimedEvent:eventName withParameters:dictionary];
}

+ (void)logEvent:(NSString *)eventName parameters:(NSDictionary *)dictionary
{
    [Flurry logEvent:eventName withParameters:dictionary];
}

+ (void)logEvent:(NSString *)eventName parameters:(NSDictionary *)dictionary timed:(BOOL)track
{
    [Flurry logEvent:eventName withParameters:dictionary timed:track];
}

+ (void)logPageView
{
    [Flurry logPageView];
}

+ (void)logAllPageViews:(id)navigationController
{
    [Flurry logAllPageViewsForTarget:navigationController];
}

+ (void)setUserId:(NSString *)string
{
//    NSString *hashedString = [[[string dataUsingEncoding:NSUTF8StringEncoding] md5Digest] hexStringValue];
//    [Flurry setUserID:hashedString];
}

@end
