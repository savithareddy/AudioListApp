//
//  ALASoundCloudRequest.m
//  AudioList
//
//  Created by Savitha Reddy on 5/9/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "ALASoundCloudRequest.h"

@implementation ALASoundCloudRequest

+ (NSDictionary *) getSongsWithCloudInfo: (NSString *)songInfo
{
//  NSMutableDictionary *albumInfo = [@{} mutableCopy];
    NSString *soundCloud  = [NSString stringWithFormat:@"http://api.soundcloud.com/playlists/4252210.json?client_id=65db70dfcdaab4cf033f9a4003a341e1"];
    NSURL * url = [NSURL URLWithString:soundCloud];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLResponse * response = nil;
    NSError * error = nil;
    NSData *responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    NSError *jsonError = nil;
    NSDictionary *soundCloudProfile = [NSJSONSerialization JSONObjectWithData:responseData options:0 error:&jsonError];
    
    NSLog(@" %@", soundCloudProfile);
    
//    if (soundCloudProfile[@"name"] != nil ) [albumInfo setObject:soundCloudProfile[@"name"] forKey:@"name"];
//    if (soundCloudProfile[@"avatar_url"] != nil ) [albumInfo setObject:soundCloudProfile[@"avatar_url"] forKey:@"image"];
//    if (soundCloudProfile[@"html_url"] != nil ) [albumInfo setObject:soundCloudProfile[@"html_url"] forKey:@"github"];
//    
//    return albumInfo;
    return soundCloudProfile;

}


@end
