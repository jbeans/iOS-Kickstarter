//
//  JBDashboardViewController.m
//  iOS Bootstrap
//
//  Created by Andreas Johannessen on 10/29/12.
//  Copyright (c) 2012 JBeans. All rights reserved.
//

#import "JBDashboardViewController.h"
#import "JBAboutAppViewController.h"
#import "Reachability.h"

@interface JBDashboardViewController ()

@end

@implementation JBDashboardViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = NSLocalizedString(@"JBDashboardViewController_tabTitle", nil);
    
    // Creates a bar button item on the right side of the navigation bar title.
    UIBarButtonItem* rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"JBDashboardViewController_barItemAbout", nil)
                                                                           style:UIBarButtonItemStylePlain
                                                                          target:self
                                                                          action:@selector(showAboutAppView)];
    
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
    
    // Checks if this is an iPhone or iPad. This is one way of using different XIB based on what device the user have.
    if ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad) {
        self.lblDevice.text = [NSString stringWithFormat:NSLocalizedString(@"JBDashboardViewController_labelDevice", nil), @"iPad"];
    } else {
        self.lblDevice.text = [NSString stringWithFormat:NSLocalizedString(@"JBDashboardViewController_labelDevice", nil), @"iPhone"];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showAboutAppView {

    JBAboutAppViewController* aboutAppVC = [[JBAboutAppViewController alloc] initWithNibName:@"JBAboutAppViewController" bundle:nil];
    UINavigationController* aboutAppNVC = [[UINavigationController alloc] initWithRootViewController:aboutAppVC];
    
    // Opens the about app view using a modal style. This way of presenting views should be used in the same way as modal dialogs is used on desktop applications.
    // An example would be when you are promting the user for some input.
    [self presentViewController:aboutAppNVC animated:YES completion:nil];
}

- (IBAction)checkInternetConnection:(id)sender {
    
    Reachability* reachability = [Reachability reachabilityWithHostname:@"vg.no"];
    NetworkStatus currentNetworkStatus = [reachability currentReachabilityStatus];
    
    NSString* message = nil;
    
    if (currentNetworkStatus == NotReachable) {
        message = NSLocalizedString(@"JBDashboardViewController_alertInternetStatusMessage1", nil);
    } else if (currentNetworkStatus == ReachableViaWiFi) {
        message = NSLocalizedString(@"JBDashboardViewController_alertInternetStatusMessage2", nil);
    } else if (currentNetworkStatus == ReachableViaWWAN) {
        message = NSLocalizedString(@"JBDashboardViewController_alertInternetStatusMessage3", nil);
    }
    
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:NSLocalizedString(@"JBDashboardViewController_alertInternetStatusTitle", nil)
                                                    message:message
                                                   delegate:nil
                                          cancelButtonTitle:NSLocalizedString(@"JBDashboardViewController_alertInternetStatusCancelButton", nil)
                                          otherButtonTitles:nil];
    
    [alert show];
    
    
}

@end
