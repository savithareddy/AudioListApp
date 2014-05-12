//
//  ALAData.h
//  AudioList
//
//  Created by Savitha Reddy on 5/12/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ALATrack.h"

@interface ALAData : NSObject

+(ALAData *) mainData;

-(void) addNewTrack :(ALATrack *) track; //to add new track

-(NSArray *) allTracks;
@end
