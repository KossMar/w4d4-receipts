//
//  Receipt+CoreDataProperties.h
//  Receipts++
//
//  Created by Mar Koss on 2017-10-26.
//  Copyright © 2017 Mar Koss. All rights reserved.
//
//

#import "Receipt+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Receipt (CoreDataProperties)

+ (NSFetchRequest<Receipt *> *)fetchRequest;

@property (nonatomic) int16_t amount;
@property (nullable, nonatomic, copy) NSString *note;
@property (nullable, nonatomic, copy) NSDate *date;
@property (nullable, nonatomic, retain) NSSet<NSManagedObject *> *tag;

@end

@interface Receipt (CoreDataGeneratedAccessors)

- (void)addTagObject:(NSManagedObject *)value;
- (void)removeTagObject:(NSManagedObject *)value;
- (void)addTag:(NSSet<NSManagedObject *> *)values;
- (void)removeTag:(NSSet<NSManagedObject *> *)values;

@end

NS_ASSUME_NONNULL_END
