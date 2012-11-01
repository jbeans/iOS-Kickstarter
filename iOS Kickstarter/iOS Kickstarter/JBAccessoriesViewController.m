//
//  JBAccessoriesViewController.m
//  iOS Bootstrap
//
//  Created by Andreas Johannessen on 10/29/12.
//  Copyright (c) 2012 JBeans. All rights reserved.
//

#import "JBAccessoriesViewController.h"
#import "JBAccessory.h"
#import "JBAccessoriesDetailViewController.h"

@interface JBAccessoriesViewController ()

- (void)initAccessoryData;

@end

@implementation JBAccessoriesViewController

@synthesize accessories;
@synthesize accessoriesTable;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        // Initializes the data needed for the table. 
        [self initAccessoryData];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = NSLocalizedString(@"JBAccessoriesViewController_navTitle", nil);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // Deselects the row that was tapped when returning.
    [self.accessoriesTable deselectRowAtIndexPath:[self.accessoriesTable indexPathForSelectedRow] animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString* AccessoryCellId = @"DefaultAccessoryCellId";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:AccessoryCellId];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:AccessoryCellId];
    }
    
    // Retrieves the accessory from the list of available accessories based on the current indexpath. 
    JBAccessory* accessory = [self.accessories objectAtIndex:indexPath.row];
    
    // Use the accessory title as the row title.
    cell.textLabel.text = accessory.title;
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.accessories count];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    JBAccessoriesDetailViewController* detailVC = [[JBAccessoriesDetailViewController alloc] initWithNibName:@"JBAccessoriesDetailViewController" bundle:nil];

    // Retrieves the accessory from the list of accessories and sets it on the detail view controller so it can use the data from the accessory that was selected in this tableview.
    JBAccessory* accessory = [self.accessories objectAtIndex:indexPath.row];
    detailVC.accessory = accessory;
    
    [self.navigationController pushViewController:detailVC animated:YES];
}

- (void)initAccessoryData {
    JBAccessory* accessory1 = [[JBAccessory alloc] init];
    accessory1.title = @"Gåstokk";
    accessory1.description = @"Gåstokkbeskrivelse.";
    accessory1.prize = 20;
    
    JBAccessory* accessory2 = [[JBAccessory alloc] init];
    accessory2.title = @"Hatt";
    accessory2.description = @"Hattebeskrivelse.";
    accessory2.prize = 5;
    
    JBAccessory* accessory3 = [[JBAccessory alloc] init];
    accessory3.title = @"Sykkel";
    accessory3.description = @"Sykkelbeskrivelse.";
    accessory3.prize = 10;
    
    self.accessories = [NSArray arrayWithObjects:accessory1, accessory2, accessory3, nil];
}

@end
