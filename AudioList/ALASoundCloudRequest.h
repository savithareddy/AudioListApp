//
//  ALASoundCloudRequest.h
//  AudioList
//
//  Created by Savitha Reddy on 5/9/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ALASoundCloudRequest : NSObject

+ (NSDictionary *) getSongsWithCloudInfo: (NSString *)songInfo;

@end
