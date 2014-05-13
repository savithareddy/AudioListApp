//
//  ALASoundCloudRequest.m
//  AudioList
//
//  Created by Savitha Reddy on 5/12/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//


#define CLIENT_ID @"client_id=a4ba461f5db7b5096c7aec0264e9ab96"
#define USER_NAME @"user622010178"
#define SC_API @"https://api.soundcloud.com"

#import "ALASoundCloudRequest.h"
#import "ALAData.h"
#import "ALADictionary.h"

@implementation ALASoundCloudRequest

+(void)updateData
{
    
    NSURL *requestURL = [NSURL URLWithString:[NSString stringWithFormat:@"%@/users/%@/playlists.json?%@",SC_API,USER_NAME,CLIENT_ID]];
    NSURLRequest *request = [NSURLRequest requestWithURL:requestURL];
    NSOperationQueue *queue = [[NSOperationQueue alloc] init]; //creating our own queue
    [NSURLConnection sendAsynchronousRequest:request queue:queue  completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        
        NSArray *scInfo = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];// check this from the soundCloud for NSArray or dictionary etc..
        
        for (NSDictionary *playlistInfo in scInfo)
        {
            ALAPlayList *playlist = [ALAPlayList newPlaylist];
            playlist[@"title"] = playlistInfo[@"title"];
            [[ALAData mainData] addNewPlaylists:playlist];
            NSLog(@"track is  %@", playlist[@"title"]);
            
            //create a new playlist and set things like playlist title
            for (NSDictionary *trackInfo in playlistInfo[@"tracks"])
            {
                if (![trackInfo[@"streamable"] boolValue]) continue;
                
                ALATrack *track = [ALATrack newTrack];
                 track.playlist = playlist;
                
               track[@"title"] = trackInfo[@"title"];
                track[@"url"] = trackInfo[@"stream_url"];
             [playlist.tracks addObject:track];
                [[ALAData mainData ] addNewTrack:track];
                
               
                
                ALAUser *user = [ALAUser newUser];
                user[@"username"] = trackInfo[@"user"][@"username"];
               
                track.user = user;
                [[ALAData mainData] addNewUser: user];
                
            
            }
        
//        NSLog(@"playlists %@",[[ALAData mainData] allPlaylists]);
//           NSLog(@"tracks %@",[[ALAData mainData] allTracks]);
//           NSLog(@"users %@",[[ALAData mainData] allUsers]);
            

    
            NSNotificationCenter *nCenter = [NSNotificationCenter defaultCenter]; //this line is requiredalways
            [nCenter postNotificationName:@"dataUpdated" object:nil]; // the name should match the same
        }
        
           }];
    
}

@end

//since ALAData is imported and not ALATrack this gives and error about the method so use the method shown below
//                [track setObject:trackInfo [@"title"] forKey:@"title"]; // this method is used if declared in the ALAtrack
