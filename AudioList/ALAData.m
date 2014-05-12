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


@end
