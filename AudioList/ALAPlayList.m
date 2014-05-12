//
//  ALAPlayList.m
//  AudioList
//
//  Created by Savitha Reddy on 5/12/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "ALAPlayList.h"

@implementation ALAPlayList

+(id) newPlaylist
{
    return [[ALAPlayList alloc] init];
}

-(NSMutableArray *) tracks
{
    if (_tracks == nil) _tracks = [@[] mutableCopy];
    
    return _tracks;
}

@end
