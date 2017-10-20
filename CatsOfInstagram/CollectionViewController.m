//
//  CollectionViewController.m
//  CatsOfInstagram
//
//  Created by Olga on 10/19/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

#import "CollectionViewController.h"
#import "CatCollectionViewCell.h"
#import "Cat.h"
#import "CatDetailViewController.h"

@interface CollectionViewController ()

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic) UICollectionViewFlowLayout *defaultLayout;
@property (nonatomic, strong) NSArray *allCats;

@end

@implementation CollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   // NSMutableArray *allCats = [NSMutableArray new];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    [self setupCats];
}

-(void)setupCats {
    
    NSArray *temp = [NSArray new];
    
    Cat *cat1 = [[Cat alloc]initWithName:@"Grumpy Cat" andImage:[UIImage imageNamed:@"grumpycat"]];
    Cat *cat2 = [[Cat alloc]initWithName:@"Hummer" andImage:[UIImage imageNamed:@"hummer"]];
    Cat *cat3 = [[Cat alloc]initWithName:@"Mushka" andImage:[UIImage imageNamed:@"mushka"]];
    Cat *cat4 = [[Cat alloc]initWithName:@"Percy" andImage:[UIImage imageNamed:@"percy"]];
    Cat *cat5 = [[Cat alloc]initWithName:@"Roji" andImage:[UIImage imageNamed:@"roji"]];
    temp = @[cat1, cat2, cat3, cat4, cat5];
    self.allCats = temp;
    NSLog(@"There're %lu cats in array", self.allCats.count);
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.allCats.count;
}


- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CatCollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"catCell" forIndexPath:indexPath];
    Cat *cat = [self.allCats objectAtIndex:indexPath.item];
    cell.catImageView.image = cat.catImage;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"catDetailView"]) {
        NSIndexPath *indexPath = [self.collectionView indexPathForCell:sender];
        Cat *cat = self.allCats[indexPath.item];
        CatDetailViewController *controller = (CatDetailViewController *)[segue destinationViewController];
        [controller setCat:cat];
    } else {
        NSLog(@"Oops... something went wrong");
    }
}

@end
