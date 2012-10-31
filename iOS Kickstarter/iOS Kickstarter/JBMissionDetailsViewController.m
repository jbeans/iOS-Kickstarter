//
//  JBMissionDetailsViewController.m
//  iOS Kickstarter
//
//  Created by Andreas Johannessen on 10/30/12.
//  Copyright (c) 2012 JBeans. All rights reserved.
//

#import "JBMissionDetailsViewController.h"
#import "JBMission.h"

@interface JBMissionDetailsViewController ()

@end

@implementation JBMissionDetailsViewController

@synthesize mission;
@synthesize missionWeb;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = self.mission.title;
    
    NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://google.no"]];
    [self.missionWeb loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
