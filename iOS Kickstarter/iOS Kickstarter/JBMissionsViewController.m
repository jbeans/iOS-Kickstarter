//
//  JBMissionsViewController.m
//  iOS Kickstarter
//
//  Created by Andreas Johannessen on 10/30/12.
//  Copyright (c) 2012 JBeans. All rights reserved.
//

#import "JBMissionsViewController.h"
#import "JBMission.h"
#import "JBMissionCell.h"

@interface JBMissionsViewController ()

- (void)initTableWithMissions;

@end

@implementation JBMissionsViewController

@synthesize missions;
@synthesize missionsTable;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        [self initTableWithMissions];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = NSLocalizedString(@"JBMissionsViewController_navTitle", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString* MissionCellId = @"DefaultMissionCellId";
    JBMissionCell* cell = (JBMissionCell *)[tableView dequeueReusableCellWithIdentifier:MissionCellId];
    
    if (cell == nil) {
        NSArray* topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"JBMissionCell" owner:nil options:nil];
        
        for (id currentObject in topLevelObjects) {
            if ([currentObject isKindOfClass:[JBMissionCell class]]) {
                cell = (JBMissionCell *)currentObject;
                break;
            }
        }
    }

    JBMission* mission = [self.missions objectAtIndex:indexPath.row];
    
    cell.lblTitle.text = mission.title;
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.missions count];
}
/*
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    JBAccessoriesDetailViewController* detailVC = [[JBAccessoriesDetailViewController alloc] initWithNibName:@"JBAccessoriesDetailViewController" bundle:nil];
    
    // Retrieves the accessory from the list of accessories and sets it on the detail view controller so it can use the data from the accessory that was selected in this tableview.
    JBAccessory* accessory = [self.accessories objectAtIndex:indexPath.row];
    detailVC.accessory = accessory;
    
    [self.navigationController pushViewController:detailVC animated:YES];
}
 */

- (void)initTableWithMissions {
    JBMission* mission1 = [[JBMission alloc] init];
    mission1.title = @"Joggetur";
    
    JBMission* mission2 = [[JBMission alloc] init];
    mission2.title = @"Løpetur";
    
    JBMission* mission3 = [[JBMission alloc] init];
    mission3.title = @"Basketball";
    
    self.missions = [NSArray arrayWithObjects:mission1, mission2, mission3, nil];
}


@end
