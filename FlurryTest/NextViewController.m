//
//  NextViewController.m
//  FlurryTest
//
//  Created by Hao Zheng on 7/30/15.
//  Copyright (c) 2015 Planhola.com. All rights reserved.
//

#import "NextViewController.h"
#import "FlurryAnalyticsUtils.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [FlurryAnalyticsUtils logPageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)dismiss:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)sleepTime2:(id)sender
{
    [FlurryAnalyticsUtils logEvent:@"SleepingTime_withPara_x1" parameters:@{@"feature":@"Arming",
                                                                           @"location":@"home",
                                                                           @"network type":@"WiFi",
                                                                           @"StartTime":[NSDate date]} timed:YES];
}

- (IBAction)endSleepTime2:(id)sender
{
    [FlurryAnalyticsUtils endTimedEvent:@"SleepingTime_withPara_x1" andParameters:@{@"EndTime":[NSDate date]}];
}

- (IBAction)sleepTime3:(id)sender
{
    [FlurryAnalyticsUtils logEvent:@"SleepingTime_withPara_x3" parameters:@{@"feature":@"Locks",
                                                                           @"location":@"Work",
                                                                           @"network type":@"LTE",
                                                                           @"StartTime":[NSDate date]} timed:YES];
}

- (IBAction)endSleepTime3:(id)sender
{
    [FlurryAnalyticsUtils endTimedEvent:@"SleepingTime_withPara_x3" andParameters:@{@"Mood":@"Great",
                                                                                   @"Battery":@"30%",
                                                                                @"EndTime":[NSDate date]}];
}
@end
