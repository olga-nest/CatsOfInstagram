//
//  CatDetailViewController.m
//  CatsOfInstagram
//
//  Created by Olga on 10/19/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

#import "CatDetailViewController.h"

@interface CatDetailViewController ()

@end

@implementation CatDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailTitleLabel.text = [self.detailItem title];
        self.detailPriorityLabel.text = [NSString stringWithFormat: @"Priority: %@", [self.detailItem priorityNumber]];
        self.detailTextView.text = [NSString stringWithFormat: @"Description: %@", [self.detailItem todoDescription]];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
