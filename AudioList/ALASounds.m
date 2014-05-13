//
//  ALASounds.m
//  AudioList
//
//  Created by Savitha Reddy on 5/12/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "ALASounds.h"

@implementation ALASounds

-(void)playSoundWithName:(NSString *)soundName
{
    NSString *file = [[NSBundle mainBundle] pathForResource:soundName ofType:@"wav"];
    
    NSData *fileData = [NSData dataWithContentsOfFile:file];
    
    self.player = [[AVAudioPlayer alloc] initWithData:fileData error:nil];
    
    self.player.numberOfLoops = 0;
    
    [self.player play];
    
}

@end
