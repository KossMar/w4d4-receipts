//
//  DetailViewController.m
//  Receipts++
//
//  Created by Mar Koss on 2017-10-26.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import "AddReceiptViewController.h"
#import "ViewController.h"
#import "AppDelegate.h"

@interface AddReceiptViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *amountTextField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextField;
@property (strong, nonatomic) NSMutableSet<Tag *> *tagSet;
//@property (strong) NSPersistentContainer *persistentContainer;
@property (weak, nonatomic) IBOutlet UIButton *personalTagButton;

@property (weak, nonatomic) IBOutlet UIButton *workTagButton;
@property (weak, nonatomic) IBOutlet UIButton *familyTagButton;

@end

@implementation AddReceiptViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tagSet = [NSMutableSet new];

    
}

- (IBAction)addNewReceipt:(UIButton *)sender {
 
    AppDelegate *appDel = (AppDelegate *)[UIApplication sharedApplication].delegate;
    NSManagedObjectContext *context = appDel.persistentContainer.viewContext;
    Receipt *newReceipt = [[Receipt alloc] initWithContext:context];
    newReceipt.note = self.descriptionTextField.text;
    newReceipt.amount = [self.amountTextField.text intValue];
    newReceipt.tag = self.tagSet;
    NSError *error = nil;
    if (![context save:&error]) {

        NSLog(@"Unresolved error %@, %@", error, error.userInfo);
        abort();
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)cancelNewReceipt:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)addTagPressed:(UIButton *)sender {

    AppDelegate *appDel = (AppDelegate *)[UIApplication sharedApplication].delegate;
    NSManagedObjectContext *context = appDel.persistentContainer.viewContext;
    
    Tag * tag = [[Tag alloc]initWithContext:context];
        tag.tagName = sender.titleLabel.text;
        [self.tagSet addObject:tag];
        sender.backgroundColor = [UIColor greenColor];
    
}


@end
