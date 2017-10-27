//
//  DetailViewController.m
//  Receipts++
//
//  Created by Mar Koss on 2017-10-26.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *amountTextField;
@property (weak, nonatomic) IBOutlet UITextField *noteTextField;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureView];

}

- (void)configureView{
    self.amountTextField.text = [NSString stringWithFormat:@"%d", self.detailReceipt.amount];
    self.noteTextField.text = self.detailReceipt.note;
}



@end
