//
//  ALATrack.h
//  AudioList
//
//  Created by Savitha Reddy on 5/12/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ALADictionary.h"

@class ALAUser;
@class ALAPlayList;

@interface ALATrack : ALADictionary //changed this from NSDictionary to NSObject again to NSDictionary and then to ALADictionary along with import that file


+(id) newTrack; // class method for the track  // id is written instead of ALATrack cause easier to subclass any other time

@property (nonatomic) ALAUser *user;
@property (nonatomic) ALAPlayList *playlist;

//-(id) objectForKey:(id) aKey;
//-(void) setObject:(id) anObject forKey:(id<NSCopying>)aKey;
//-(void) removeObjectForKey:(id) aKey;

@end
