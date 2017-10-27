//
//  Tag+CoreDataProperties.h
//  Receipts++
//
//  Created by Mar Koss on 2017-10-26.
//  Copyright © 2017 Mar Koss. All rights reserved.
//
//

#import "Tag+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Tag (CoreDataProperties)

+ (NSFetchRequest<Tag *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *tagName;
@property (nullable, nonatomic, retain) NSSet<NSManagedObject *> *receipt;

@end

@interface Tag (CoreDataGeneratedAccessors)

- (void)addReceiptObject:(NSManagedObject *)value;
- (void)removeReceiptObject:(NSManagedObject *)value;
- (void)addReceipt:(NSSet<NSManagedObject *> *)values;
- (void)removeReceipt:(NSSet<NSManagedObject *> *)values;

@end

NS_ASSUME_NONNULL_END
