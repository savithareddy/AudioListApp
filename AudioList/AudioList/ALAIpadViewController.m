//
//  ALAIpadViewController.m
//  AudioList
//
//  Created by Savitha Reddy on 5/8/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "ALAIpadViewController.h"
#import "ALATableViewController.h"
#import "ALASoundCloudRequest.h"

@interface ALAIpadViewController () <UISplitViewControllerDelegate>

@end

@implementation ALAIpadViewController
{
    ALATableViewController *listVC;
    UIViewController *detailVC;
    UINavigationController *nc;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        detailVC = [[UIViewController alloc] initWithNibName:nil bundle:nil];
        nc = [[UINavigationController alloc] initWithRootViewController:detailVC];
        listVC = [[ALATableViewController alloc] initWithStyle:UITableViewStylePlain];
        self.viewControllers = @[listVC,nc];
        self.presentsWithGesture = YES; //default value is YES so popover still works if this is commented
        self.delegate = self;
        [ALASoundCloudRequest updateData]; // added this
    }
    return self;
}

-(void)splitViewController:(UISplitViewController *)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)pc
{
//    NSLog(@"%@",nc);
  barButtonItem.title = @"button";
//    NSLog(@"%@",barButtonItem);
    detailVC.navigationItem.leftBarButtonItem = barButtonItem;
//    detailVC.navigationController.navigationBarHidden = NO; // landscape no NavBAr and only potrait we have navBar
    nc.navigationBarHidden = NO;
    NSLog(@" hide"); // works on rotation of the screen and not on the swipe gesture
}

-(void)splitViewController:(UISplitViewController *)svc willShowViewController:(UIViewController *)aViewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    nc.navigationBarHidden = YES;
    NSLog(@"show");
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
