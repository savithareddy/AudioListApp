//
//  ALASingleton.m
//  AudioList
//
//  Created by Savitha Reddy on 5/8/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "ALASingleton.h"
#import "ALASoundCloudRequest.h"


@implementation ALASingleton
{
    ALASoundCloudRequest *soundCR;
}

+(ALASingleton *) mainData
{
    static dispatch_once_t create;
    static ALASingleton *singleton = nil;
    dispatch_once(&create, ^{
        singleton = [[ALASingleton alloc] init];
    });
    return singleton;
    
}

-(id) init
{
    self=[super init];
    if(self)
    {
        
    }
    return self;
}

-(NSMutableArray *)cellData
{
//    NSLog(@" Sound Cloud Request SAVITHA %@", [ALASoundCloudRequest getSongsWithCloudInfo]);
   _cellData = [@
                     [@{@"image" : [UIImage imageNamed : @"squares"],@"name" : @"Melody"},
                      @{@"image" : [UIImage imageNamed : @"dice"],@"name" : @"Melody"}
                      ]mutableCopy];
    return _cellData;
}

-(NSMutableArray *)allCellData
{
    
    return [self.cellData copy];
}



@end
