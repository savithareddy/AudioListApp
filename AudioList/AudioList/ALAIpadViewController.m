//
//  ALAIpadViewController.m
//  AudioList
//
//  Created by Savitha Reddy on 5/8/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "ALAIpadViewController.h"
#import "ALAListVC.h"
#import "ALADetailVC.h" //import detailVC here after @class in .h
#import "ALASoundCloudRequest.h"


@interface ALAIpadViewController () <UISplitViewControllerDelegate>

@end

@implementation ALAIpadViewController
{
    ALAListVC *listVC;
 ALADetailVC *detailVC;
    UINavigationController *nc;
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        detailVC = [[ALADetailVC alloc] initWithNibName:nil bundle:nil];
        nc = [[UINavigationController alloc] initWithRootViewController:detailVC];
        listVC = [[ALAListVC alloc] initWithStyle:UITableViewStylePlain];
        listVC.detailVC = detailVC; // very important after import declare listVC property detailVC == detailvc
        self.viewControllers = @[listVC,nc];
        self.presentsWithGesture = YES; //default value is YES so popover still works if this is commented
        self.delegate = self;
    }
    return self;
}

-(void)splitViewController:(UISplitViewController *)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)pc
{
    barButtonItem.title = @"button";
    detailVC.navigationItem.leftBarButtonItem = barButtonItem;
     nc.navigationBarHidden = NO;
    
//    detailVC.navigationController.navigationBarHidden = NO; // landscape no NavBAr and only potrait we have navBar
//    NSLog(@" hide"); // works on rotation of the screen and not on the swipe gesture
}

-(void)splitViewController:(UISplitViewController *)svc willShowViewController:(UIViewController *)aViewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    nc.navigationBarHidden = YES;

}

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
