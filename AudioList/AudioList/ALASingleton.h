//
//  ALASingleton.h
//  AudioList
//
//  Created by Savitha Reddy on 5/8/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ALASingleton : NSObject

+(ALASingleton *) mainData;

@property (nonatomic) NSMutableArray  *cellData;

-(NSMutableArray *) allCellData;

@end
