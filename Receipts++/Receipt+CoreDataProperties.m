//
//  Receipt+CoreDataProperties.m
//  Receipts++
//
//  Created by Mar Koss on 2017-10-26.
//  Copyright © 2017 Mar Koss. All rights reserved.
//
//

#import "Receipt+CoreDataProperties.h"

@implementation Receipt (CoreDataProperties)

+ (NSFetchRequest<Receipt *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Receipt"];
}

@dynamic amount;
@dynamic note;
@dynamic date;
@dynamic tag;

@end
