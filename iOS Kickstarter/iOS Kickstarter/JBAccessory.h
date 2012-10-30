//
//  JBAccessory.h
//  iOS Bootstrap
//
//  Created by Andreas Johannessen on 10/29/12.
//  Copyright (c) 2012 JBeans. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JBAccessory : NSObject

@property (strong, nonatomic) NSString* title;
@property (strong, nonatomic) NSString* description;
@property (assign, nonatomic) NSInteger prize;

@end
