//
//  ALADictionary.m
//  AudioList
//
//  Created by Savitha Reddy on 5/12/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "ALADictionary.h"

@implementation ALADictionary
{
    NSMutableDictionary *dict;
}


-(id)init
{
    self= [super init];
    if(self)
    {
        dict = [@{} mutableCopy]; // dict is a dictionary and so {}
    }
    return self;
}

-(id)objectForKey:(id)aKey
{
    return dict[aKey];
}

-(void)setObject:(id)anObject forKey:(id<NSCopying>)aKey
{
    dict[aKey] = anObject;
}

-(void)removeObjectForKey:(id)aKey
{
    [dict removeObjectForKey:aKey];
}
-(NSUInteger)count
{
    return [dict count];
}

-(NSEnumerator *)keyEnumerator
{
    return [dict keyEnumerator];
}

 @end
