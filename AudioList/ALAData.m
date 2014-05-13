//
//  ALAData.m
//  AudioList
//
//  Created by Savitha Reddy on 5/12/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "ALAData.h"


@implementation ALAData
{
    NSMutableArray *tracks;
    NSMutableArray *users;
    NSMutableArray *playlists;
}

+(ALAData *) mainData
{
    static dispatch_once_t create;
    static ALAData *singleton = nil;
    
    dispatch_once(&create, ^{
        singleton = [[ALAData alloc] init];
    });
    return singleton;
    
}

-(id)init
{
    self = [super init];
    if(self)
    {
        tracks = [@[] mutableCopy];
        users = [@[] mutableCopy];
        playlists = [@[] mutableCopy];
        
    }
    
    return self;
}

-(void)addNewTrack:(ALATrack *)track
{
    [tracks addObject:track];
    
}

-(NSArray *)allTracks
{
    return  [tracks copy]; // copy to play with the copy and keep original as is 
}

-(void)addNewUser:(ALAUser *)user
{
    [users addObject:user];
    
}

-(NSArray *)allUsers
{
    return  [users copy]; // copy to play with the copy and keep original as is
}

-(void)addNewPlaylists:(ALAPlayList *)playlist
{
    [playlists addObject:playlist];
    
}

-(NSMutableArray *)allPlaylists
{
    return  [playlists copy]; // copy to play with the copy and keep original as is
}



@end
