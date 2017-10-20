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
    [self configureView];
}


- (void)configureView {
    // Update the user interface for the detail item.
    if (self.cat) {
        self.catDetailLabel.text = [self.cat catName];
        self.catDetailImage.image = [self.cat catImage];
    }
}

- (void)setCat:(Cat *) cat {
    if (_cat != cat) {
        _cat = cat;
        
        // Update the view.
        [self configureView];
    }
}

@end
