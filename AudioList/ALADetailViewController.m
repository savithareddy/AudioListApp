//
//  ALADetailViewController.m
//  AudioList
//
//  Created by Savitha Reddy on 5/12/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "ALADetailViewController.h"
#import "ALAData.h"

@interface ALADetailViewController ()

@end

@implementation ALADetailViewController
{
    UIImageView *audioImage;
    UILabel *trackName;
    UIButton *playButton;
    UIButton *stopButton;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        audioImage = [[UIImageView alloc] initWithFrame:CGRectMake(150, 80, 350, 350)];
        audioImage.backgroundColor = [UIColor cyanColor];
        audioImage.layer.masksToBounds=YES;
        [self.view addSubview:audioImage];

        trackName = [[UILabel alloc] initWithFrame:CGRectMake(150,450, 350, 100)];
        trackName.font = [UIFont fontWithName:@"Times New Roman" size:30];
        trackName.backgroundColor = [UIColor yellowColor];
        [self.view addSubview:trackName];
        
        playButton =[[UIButton alloc] initWithFrame:CGRectMake(150, 560, 60, 60)];
        [playButton setImage:[UIImage imageNamed:@"play"] forState:UIControlStateNormal];
        [playButton addTarget:self action:@selector(play) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:playButton];
        
        stopButton =[[UIButton alloc] initWithFrame:CGRectMake(230, 560, 60, 60)];
        [stopButton setImage:[UIImage imageNamed:@"stop"] forState:UIControlStateNormal];
        [stopButton addTarget:self action:@selector(stop) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:stopButton];
        
    }
    return self;
}

-(void) play
{
    
}

-(void) stop
{
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    
}

-(void)setIndex:(NSInteger)index
{
    _index = index;
    NSDictionary *trackInfo = [[ALAData mainData] allTracks] [index];
//    NSLog(@" cell Info is %@",detailInfo);
//    audioImage.image = trackInfo[@"image"];
   trackName.text = trackInfo[@"title"];
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}


@end
