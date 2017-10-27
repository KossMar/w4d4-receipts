//
//  Tag+CoreDataProperties.m
//  Receipts++
//
//  Created by Mar Koss on 2017-10-26.
//  Copyright © 2017 Mar Koss. All rights reserved.
//
//

#import "Tag+CoreDataProperties.h"

@implementation Tag (CoreDataProperties)

+ (NSFetchRequest<Tag *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Tag"];
}

@dynamic tagName;
@dynamic receipt;

@end
