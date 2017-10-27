//
//  DetailViewController.h
//  Receipts++
//
//  Created by Mar Koss on 2017-10-26.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "Receipt+CoreDataClass.h"


@interface DetailViewController : UIViewController

@property (nonatomic, strong) Receipt *detailReceipt;

@end
