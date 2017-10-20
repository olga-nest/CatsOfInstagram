//
//  Cat.h
//  CatsOfInstagram
//
//  Created by Olga on 10/19/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Cat : NSObject

@property (nonatomic) NSString *catName;
@property (nonatomic) UIImage *catImage;
@property (nonatomic) NSString *catImageName;

- (instancetype)initWithName: (NSString *)catName andImage: (UIImage *) image;

@end
