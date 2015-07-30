
#import <Foundation/Foundation.h>

@interface FlurryAnalyticsUtils : NSObject

+ (void)startAppSession;
+ (void)startWatchExtensionSession;

+ (void)logEvent:(NSString *)eventName;
+ (void)logEvent:(NSString *)eventName timed:(BOOL)track;

+ (void)endTimedEvent:(NSString *)eventName;
+ (void)endTimedEvent:(NSString *)eventName andParameters:(NSDictionary *)dictionary;

+ (void)logEvent:(NSString *)eventName parameters:(NSDictionary *)dictionary;
+ (void)logEvent:(NSString *)eventName parameters:(NSDictionary *)dictionary timed:(BOOL)track;

+ (void)logError:(NSString *)errorName message:(NSString *)message exception:(NSException *)exception;

+ (void)logPageView;
+ (void)logAllPageViews:(id)navigationController;

/**
 *  Flurry policy says ids should be hashed before sending
 */
+ (void)logUserID:(NSString *)string;

@end
