//
//  JBAccessoriesDetailViewController.h
//  iOS Bootstrap
//
//  Created by Andreas Johannessen on 10/29/12.
//  Copyright (c) 2012 JBeans. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JBAccessory;

@interface JBAccessoriesDetailViewController : UIViewController

@property (strong, nonatomic) JBAccessory* accessory;
@property (strong, nonatomic) IBOutlet UILabel* lblDescription;

@end
