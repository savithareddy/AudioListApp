//
//  ALASounds.h
//  AudioList
//
//  Created by Savitha Reddy on 5/12/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface ALASounds : NSObject// <AVAudioPlayerDelegate>

@property (nonatomic) AVAudioPlayer *player;

-(void) playSoundWithName : (NSString *) soundName;

@end