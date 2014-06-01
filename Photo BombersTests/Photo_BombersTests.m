//
//  Photo_BombersTests.m
//  Photo BombersTests
//
//  Created by Miguel Beltre on 18/05/14.
//  Copyright (c) 2014 Miguel Beltre. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "FBPhotosViewController.h"
#import "FBPhotoCell.h"

@interface Photo_BombersTests : XCTestCase
@property (nonatomic) FBPhotosViewController *pvc;
@property (nonatomic) FBPhotoCell *photoCell;

@end

@implementation Photo_BombersTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.pvc = [[FBPhotosViewController alloc] init];
    self.photoCell = [[FBPhotoCell alloc] init];
}

- (void)tearDown
{
    self.pvc = nil;
    
    [super tearDown];
}

#pragma mark - FBPhotosViewControllerTest

- (void)testFBPhotosViewControllerNotNil
{
    XCTAssertNotNil(self.pvc, @"The FBPhotosViewController was nil");
}



#pragma mark - FBPhotoCell
- (void)testFBPhotoCellClass
{
    XCTAssertTrue([self.photoCell isKindOfClass:[UICollectionViewCell class]], @"The photo cell's class was %@",
                  [self.photoCell class]);
}

- (void)testFBPhotoCellNil
{
    XCTAssertNil(self.photoCell, @"Photo cell was not nil");
}


@end
