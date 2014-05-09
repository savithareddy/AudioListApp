//
//  ALADetailVC.m
//  AudioList
//
//  Created by Savitha Reddy on 5/8/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "ALADetailVC.h"
#import "ALASingleton.h"

@interface ALADetailVC ()

@end

@implementation ALADetailVC
{
    UIImageView *audioImage;
    UILabel *audioName;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        audioImage = [[UIImageView alloc] initWithFrame:CGRectMake(150, 80, 350, 350)];
        audioImage.backgroundColor = [UIColor cyanColor];
        audioImage.layer.masksToBounds=YES;
        [self.view addSubview:audioImage];
        
        audioName = [[UILabel alloc] initWithFrame:CGRectMake(150, 450, 350, 100)];
        audioName.font = [UIFont fontWithName:@"Times New Roman" size:30];
        audioName.backgroundColor = [UIColor yellowColor];
        [self.view addSubview:audioName];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    
}

-(void)setIndex:(NSInteger)index
{
    NSLog(@"calling Set Detail");
    _index = index;
    NSDictionary *detailInfo = [[ALASingleton mainData] allCellData] [index];
    NSLog(@" cell Info is %@",detailInfo);
    audioImage.image = detailInfo[@"image"];
    audioName.text = detailInfo[@"name"];
    

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
