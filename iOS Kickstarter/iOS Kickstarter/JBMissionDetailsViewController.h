//
//  JBMissionDetailsViewController.h
//  iOS Kickstarter
//
//  Created by Andreas Johannessen on 10/30/12.
//  Copyright (c) 2012 JBeans. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JBMission;

@interface JBMissionDetailsViewController : UIViewController

@property (strong, nonatomic) JBMission* mission;
@property (strong, nonatomic) IBOutlet UIWebView* missionWeb;

@end
