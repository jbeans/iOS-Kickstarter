//
//  JBDashboardViewController.m
//  iOS Bootstrap
//
//  Created by Andreas Johannessen on 10/29/12.
//  Copyright (c) 2012 JBeans. All rights reserved.
//

#import "JBDashboardViewController.h"
#import "JBAboutAppViewController.h"

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

@end
