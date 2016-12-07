//
//  ViewController.m
//  FlurryTest
//
//  Created by Hao Zheng on 7/30/15.
//  Copyright (c) 2015 Planhola.com. All rights reserved.
//

#import "ViewController.h"
#import "FlurryAnalyticsUtils.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [FlurryAnalyticsUtils logAllPageViews:self.navigationController];
    [FlurryAnalyticsUtils logPageView];
    
    [FlurryAnalyticsUtils logUserID:@"1234567"];
    
//    double time1 = [[NSDate date] timeIntervalSince1970];
//    double time2 = CACurrentMediaTime();
//    NSLog(@"xx %f",time1);
//    NSLog(@"xx %f",time2);
//    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        NSLog(@"xx1 %f",[[NSDate date] timeIntervalSince1970] - time1);
//        
//        NSLog(@"xx1 %f",CACurrentMediaTime() - time2);
//    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)read:(id)sender
{
    [FlurryAnalyticsUtils logEvent:@"Reading"];
}

- (IBAction)sleep:(id)sender
{
    [FlurryAnalyticsUtils logEvent:@"Sleeping"];
}

- (IBAction)sleepleft:(id)sender
{
    [FlurryAnalyticsUtils logEvent:@"Sleeping" parameters:@{@"Left":@"no good"}];
}

- (IBAction)sleepup:(id)sender
{
    [FlurryAnalyticsUtils logEvent:@"Sleeping" parameters:@{@"Up":@"hard"}];
}

- (IBAction)sleepright:(id)sender
{
    [FlurryAnalyticsUtils logEvent:@"Sleeping" parameters:@{@"Right":@"damn good"}];
}

- (IBAction)sleepWithTime:(id)sender
{
    NSString *time = [NSString stringWithFormat:@"%.4f",CACurrentMediaTime()];
    NSLog(@"StartTime:  %@",time);
    [FlurryAnalyticsUtils logEvent:@"SleepingTime_VVVVV" parameters:@{@"feature":@"Locks",
                                                                @"location":@"Work",
                                                                @"network type":@"LTE",
                                                                  @"StartTime":time} timed:YES];
}

- (IBAction)sleepWithEnd:(id)sender
{
    NSString *time = [NSString stringWithFormat:@"%.4f",CACurrentMediaTime()];
    NSLog(@"End Time:  %@",time);
    [FlurryAnalyticsUtils endTimedEvent:@"SleepingTime_VVVVV" andParameters:@{@"EndTime":time}];
}
@end
