//
//  JBDashboardViewController.h
//  iOS Bootstrap
//
//  Created by Andreas Johannessen on 10/29/12.
//  Copyright (c) 2012 JBeans. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JBDashboardViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel* lblDevice;

- (void)showAboutAppView;
- (IBAction)checkInternetConnection:(id)sender;

@end
