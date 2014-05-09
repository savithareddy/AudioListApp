//
//  ALAAlbum.h
//  AudioList
//
//  Created by Savitha Reddy on 5/9/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ALAArtist;

@interface ALAAlbum : NSDictionary

@property (nonatomic) ALAArtist *albumArtist;
@property (nonatomic) NSArray *albumSong;

@end
