//
//  JBMissionCell.m
//  iOS Kickstarter
//
//  Created by Andreas Johannessen on 10/30/12.
//  Copyright (c) 2012 JBeans. All rights reserved.
//

#import "JBMissionCell.h"

@implementation JBMissionCell

@synthesize lblTitle;
@synthesize imgMissionThumb;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
