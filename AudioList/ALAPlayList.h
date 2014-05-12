//
//  ALAPlayList.h
//  AudioList
//
//  Created by Savitha Reddy on 5/12/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "ALADictionary.h"

@interface ALAPlayList : ALADictionary

+(id) newPlaylist;

@property (nonatomic) NSMutableArray *tracks;

@end
