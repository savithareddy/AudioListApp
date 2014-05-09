//
//  ALATableViewCell.m
//  AudioList
//
//  Created by Savitha Reddy on 5/8/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "ALATableViewCell.h"
#import "ALASingleton.h"

@implementation ALATableViewCell
{
    UIImageView *audioImage;
    UILabel *audioName;
    UILabel *audioSong;
    UILabel *timesPlayed;
    UILabel *likesDislikes;
    
    
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        audioImage = [[UIImageView alloc] initWithFrame:CGRectMake(20, 40, 60, 60)];
        audioImage.layer.cornerRadius=30;
        audioImage.backgroundColor = [UIColor cyanColor];
        audioImage.layer.masksToBounds=YES;
        [self.contentView addSubview:audioImage];
        
        audioName = [[UILabel alloc] initWithFrame:CGRectMake(100, 20, 100, 60)];
        audioName.font = [UIFont fontWithName:@"Times New Roman" size:30];
        audioName.backgroundColor = [UIColor yellowColor];
        [self.contentView addSubview:audioName];
        
//        audioSong =[[UILabel alloc] initWithFrame:CGRectMake(100, 40, 175, 60)];
//        audioSong.font = [UIFont fontWithName:@"Times New Roman" size:10];
//        [self.contentView addSubview:audioSong];
//        
//        timesPlayed =[[UILabel alloc] initWithFrame:CGRectMake(100, 40, 175, 60)];
//        audioSong.font = [UIFont fontWithName:@"Times New Roman" size:10];
//        [self.contentView addSubview:t];
//        
//        audioSong =[[UILabel alloc] initWithFrame:CGRectMake(100, 40, 175, 60)];
//        audioSong.font = [UIFont fontWithName:@"Times New Roman" size:10];
//        [self.contentView addSubview:audioSong];

    }
    return self;
}

-(void)setIndex:(NSInteger)index
{
    _index = index;
  NSDictionary *cellInfo = [[ALASingleton mainData] cellData] [index];
   NSLog(@" cell Info is %@",cellInfo);
    audioImage.image = cellInfo[@"image"];
   audioName.text = cellInfo[@"name"];
  
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

   
}

@end
