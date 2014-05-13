//
//  ALATableViewController.m
//  AudioList
//
//  Created by Savitha Reddy on 5/12/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "ALATableViewController.h"
#import "ALADetailViewController.h"
#import "ALAIpadViewController.h"
#import "ALAData.h"
//#import "ALAPlayList.h"
#import "ALADictionary.h"

@interface ALATableViewController ()

@end

@implementation ALATableViewController
{
    ALAIpadViewController *ipadVC;

}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        
        // Custom initialization
        
        NSNotificationCenter *nCenter = [NSNotificationCenter defaultCenter]; //singleton for notification
        //                       NSOperationQueue *queue = [[NSOperationQueue alloc] init];
        [ nCenter addObserverForName:@"dataUpdated" object:nil queue:nil usingBlock:^(NSNotification *note) {
            NSLog(@" Reload TableView");
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.tableView reloadData];
            });
            
        }];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"numberOfRowsInSection() %d", ipadVC.tabBarItem.tag);
    if (ipadVC.tabBarItem.tag ==1 )
    {
        return [[[ALAData mainData] allPlaylists] count];
    }else  if (ipadVC.tabBarItem.tag == 2){
        return [[[ALAData mainData] allTracks] count];
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    // indexPath.row to get each cell // indexPath.section.row if u have sections also
    NSLog(@" %d", ipadVC.tabBarItem.tag);
    if (ipadVC.tabBarItem.tag ==1 ) {
        ALAPlayList *playlist = [[ALAData mainData] allPlaylists] [indexPath .row];
        cell.textLabel.text = playlist[@"title"];
    }else if (ipadVC.tabBarItem.tag == 2){
        ALATrack *track = [[ALAData mainData] allTracks] [indexPath .row];
        cell.textLabel.text = track[@"title"];
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    self.detailVC.index = indexPath.row;
    
}


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

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
