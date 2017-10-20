//
//  Cat.m
//  CatsOfInstagram
//
//  Created by Olga on 10/19/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

#import "Cat.h"

@implementation Cat

- (instancetype)initWithName: (NSString *)catName andImage: (UIImage *) image;
{
    self = [super init];
    if (self) {
        _catName = catName;
        _catImage = image;
        
    }
    return self;
}

@end
