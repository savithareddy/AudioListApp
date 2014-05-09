//
//  ALASong.h
//  AudioList
//
//  Created by Savitha Reddy on 5/9/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ALAArtist;
@class ALAAlbum;

@interface ALASong : NSDictionary

@property (nonatomic) ALAArtist *songArtist;
@property (nonatomic) ALAAlbum *songAlbum;

@end
