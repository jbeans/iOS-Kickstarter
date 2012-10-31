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
#import "JBMissionDetailsViewController.h"

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

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.missionsTable deselectRowAtIndexPath:[self.missionsTable indexPathForSelectedRow] animated:YES];
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
    
    // Search in bundle for the image to be displayed in the cell.
    cell.imgMissionThumb.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:mission.imagePath ofType:@"png"]];

    cell.lblTitle.text = mission.title;
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.missions count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60.0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    JBMissionDetailsViewController* missionDetailsVC = [[JBMissionDetailsViewController alloc] initWithNibName:@"JBMissionDetailsViewController" bundle:nil];
    
    JBMission* mission = [self.missions objectAtIndex:indexPath.row];
    missionDetailsVC.mission = mission;
    
    // Pushes on a third view controller on the navigation stack.
    [self.navigationController pushViewController:missionDetailsVC animated:YES];
}

- (void)initTableWithMissions {
    JBMission* mission1 = [[JBMission alloc] init];
    mission1.title = @"Joggetur";
    mission1.imagePath = @"jogger";
    
    JBMission* mission2 = [[JBMission alloc] init];
    mission2.title = @"Løpetur";
    mission2.imagePath = @"runner";
    
    JBMission* mission3 = [[JBMission alloc] init];
    mission3.title = @"Basketball";
    mission3.imagePath = @"basket";
    
    self.missions = [NSArray arrayWithObjects:mission1, mission2, mission3, nil];
}


@end
