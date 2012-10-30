//
//  JBAccessoriesDetailViewController.m
//  iOS Bootstrap
//
//  Created by Andreas Johannessen on 10/29/12.
//  Copyright (c) 2012 JBeans. All rights reserved.
//

#import "JBAccessoriesDetailViewController.h"
#import "JBAccessory.h"

@interface JBAccessoriesDetailViewController ()

@end

@implementation JBAccessoriesDetailViewController

@synthesize accessory;

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
 
    self.title = self.accessory.title;
    self.lblDescription.text = self.accessory.description;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
