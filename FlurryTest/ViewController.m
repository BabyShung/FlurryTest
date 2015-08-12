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
    [FlurryAnalyticsUtils logEvent:@"SleepingTime_x0" parameters:@{@"feature":@"Locks",
                                                                @"location":@"Work",
                                                                @"network type":@"LTE",
                                                                  @"StartTime":[NSDate date]} timed:YES];
}

- (IBAction)sleepWithEnd:(id)sender
{
    [FlurryAnalyticsUtils endTimedEvent:@"SleepingTime_x0" andParameters:@{@"EndTime":[NSDate date]}];
}
@end
