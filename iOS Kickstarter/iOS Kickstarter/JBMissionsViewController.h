//
//  JBMissionsViewController.h
//  iOS Kickstarter
//
//  Created by Andreas Johannessen on 10/30/12.
//  Copyright (c) 2012 JBeans. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JBMissionsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray* missions;
@property (strong, nonatomic) IBOutlet UITableView* missionsTable;

@end
