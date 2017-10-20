//
//  CatDetailViewController.h
//  CatsOfInstagram
//
//  Created by Olga on 10/19/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Cat.h"

@interface CatDetailViewController : UIViewController
@property (nonatomic) Cat *cat;
@property (weak, nonatomic) IBOutlet UILabel *catDetailLabel;
@property (weak, nonatomic) IBOutlet UIImageView *catDetailImage;

@end
