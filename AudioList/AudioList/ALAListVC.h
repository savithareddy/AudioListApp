//
//  ALAListVC.h
//  AudioList
//
//  Created by Savitha Reddy on 5/8/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "ALADetailVC.h"

@class ALADetailVC; //instead of import make it a class for side by side view 

@interface ALAListVC : UITableViewController

@property (nonatomic) ALADetailVC *detailVC;

@end
