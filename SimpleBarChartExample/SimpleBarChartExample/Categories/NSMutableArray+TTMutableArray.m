//
//  NSMutableArray+TTMutableArray.m
//  TypeTeacher
//
//  Created by Mohammed Islam on 11/18/13.
//  Copyright (c) 2013 KSITechnology. All rights reserved.
//

#import "NSMutableArray+TTMutableArray.h"

@implementation NSMutableArray (TTMutableArray)

- (void)shuffle
{
    NSUInteger count = [self count];

	for (NSUInteger i = 0; i < count; ++i)
	{
        // Select a random element between i and end of array to swap with.
        NSInteger nElements	= count - i;
        NSInteger n			= arc4random_uniform(nElements) + i;

        [self exchangeObjectAtIndex:i withObjectAtIndex:n];
    }
}

@end
