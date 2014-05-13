//
//  ALATableViewCell.m
//  AudioList
//
//  Created by Savitha Reddy on 5/12/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "ALATableViewCell.h"

@implementation ALATableViewCell
{
    UIImageView *audioImage;
    UILabel *trackName;
    UIButton *playButton;
    UIButton *stopButton;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        audioImage = [[UIImageView alloc] initWithFrame:CGRectMake(20, 40, 100, 100)];
        audioImage.backgroundColor = [UIColor cyanColor];
        audioImage.layer.masksToBounds=YES;
        [self.contentView addSubview:audioImage];
        
        trackName = [[UILabel alloc] initWithFrame:CGRectMake(100,160, 200, 60)];
        trackName.font = [UIFont fontWithName:@"Times New Roman" size:30];
        trackName.backgroundColor = [UIColor yellowColor];
        [self.contentView addSubview:trackName];
        
        playButton =[[UIButton alloc] initWithFrame:CGRectMake(200, 240, 60, 60)];
        [playButton setImage:[UIImage imageNamed:@"play"] forState:UIControlStateNormal];
        [playButton addTarget:self action:@selector(play) forControlEvents:UIControlEventTouchUpInside];
        [self.contentView addSubview:playButton];
        
        stopButton =[[UIButton alloc] initWithFrame:CGRectMake(300, 240, 60, 60)];
        [stopButton setImage:[UIImage imageNamed:@"stop"] forState:UIControlStateNormal];
        [stopButton addTarget:self action:@selector(stop) forControlEvents:UIControlEventTouchUpInside];
        [self.contentView addSubview:stopButton];

       }
    return self;
}

-(void) play
{
    
}

-(void) stop
{
    
}

-(void)setIndex:(NSInteger)index
{
    _index = index;
//    NSDictionary *cellInfo = [[ALAData mainData] cellData] [index];
//    //   NSLog(@" cell Info is %@",cellInfo);
//    audioImage.image = cellInfo[@"image"];
//    audioName.text = cellInfo[@"name"];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    
}



@end
