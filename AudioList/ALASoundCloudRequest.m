//
//  ALASoundCloudRequest.m
//  AudioList
//
//  Created by Savitha Reddy on 5/9/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#define CLIENT_ID @"a4ba461f5db7b5096c7aec0264e9ab96"

#import "ALASoundCloudRequest.h"
#import "ALASong.h"
#import "ALAArtist.h"
#import "ALAAlbum.h"

@implementation ALASoundCloudRequest

+ (NSDictionary *) getSongsWithCloudInfo
{
    NSString *soundCloud  = [NSString stringWithFormat:@"https://api.soundcloud.com/users/user622010178/playlists.json?client_id=%@", CLIENT_ID];
//    NSLog(@"Connecting to %@", soundCloud);
    NSURL * url = [NSURL URLWithString:soundCloud];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLResponse * response = nil;
    NSError * error = nil;
    NSData *responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    NSError *jsonError = nil;
    NSArray *soundCloudProfile = [NSJSONSerialization JSONObjectWithData:responseData options:0 error:&jsonError];
    
    
//    for (NSDictionary *albumInfo in soundCloudProfile)
//    {
//        
//        //artist instance
//        //album instance
//        
//        NSString* playlistName = albumInfo[@"title"];
//        //print
//        
//        NSDictionary *userInfo = albumInfo[@"user"];
//        NSString *username = userInfo[@"username"];
//        //print
//        
//        NSArray *trackInfo = albumInfo[@"tracks"];
//        for (NSDictionary *track  in trackInfo)
//        {
//            // track instance
//            
//            NSString *trackName=  track[@"title"];
//            //print
//        }
//    }
    
    return soundCloudProfile;
    
// to update tableview NSNotification ...
    
}






@end
