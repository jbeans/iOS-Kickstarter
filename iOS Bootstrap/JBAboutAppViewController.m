//
//  JBAboutAppViewController.m
//  iOS Bootstrap
//
//  Created by Andreas Johannessen on 10/29/12.
//  Copyright (c) 2012 JBeans. All rights reserved.
//

#import "JBAboutAppViewController.h"

@interface JBAboutAppViewController ()

@end

@implementation JBAboutAppViewController

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
    
    self.title = NSLocalizedString(@"JBAboutAppViewController_navTitle", nil);
    
    UIBarButtonItem* leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"JBAboutAppViewController_barItemClose", nil)
                                                                          style:UIBarButtonItemStylePlain
                                                                         target:self
                                                                         action:@selector(dismissView)];
    
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dismissView {
    [self dismissViewControllerAnimated:YES completion:^ {
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:NSLocalizedString(@"JBAboutAppViewController_alertDismissTitle", nil)
                                                        message:NSLocalizedString(@"JBAboutAppViewController_alertDismissMessage", nil)
                                                       delegate:nil
                                              cancelButtonTitle:NSLocalizedString(@"JBAboutAppViewController_alertDismissCancelButton", nil)
                                              otherButtonTitles:nil];
        [alert show];
    }];
}

@end
