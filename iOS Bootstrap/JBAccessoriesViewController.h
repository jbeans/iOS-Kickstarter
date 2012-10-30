//
//  JBAccessoriesViewController.h
//  iOS Bootstrap
//
//  Created by Andreas Johannessen on 10/29/12.
//  Copyright (c) 2012 JBeans. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JBAccessoriesViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray* accessories;
@property (strong, nonatomic) IBOutlet UITableView* accessoriesTable;

@end
