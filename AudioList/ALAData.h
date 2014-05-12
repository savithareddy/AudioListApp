//
//  ALAData.h
//  AudioList
//
//  Created by Savitha Reddy on 5/12/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "ALADictionary.h"
#import "ALATrack.h"
#import "ALAUser.h"
#import "ALAPlayList.h"

@interface ALAData : NSObject

+(ALAData *) mainData;

-(void) addNewTrack :(ALATrack *) track; //to add new track
-(void) addNewUser:(ALAUser *)user;
-(void) addNewPlaylists : (ALAPlayList *) playlist;

-(NSArray *) allTracks;
-(NSArray *) allUsers;
-(NSArray *) allPlaylists;
@end
