//
//  CategoryModel.m
//  WinTreasure
//
//  Created by Apple on 16/6/23.
//  Copyright © 2016年 linitial. All rights reserved.
//

#import "CategoryModel.h"

@implementation CategoryModel

- (instancetype)init {
    self = [super init];
    if (self) {
        self.productImgUrl = @"https://tse4-mm.cn.bing.net/th?id=OIP.M9271c634f71d813901afbc9e69602dcfo2&pid=15.1";
        self.productName = @"斯嘉丽·约翰逊(Scarlett Johansson),1984年11月22日生于纽约，美国女演员。";
        self.totalAmount = @5288;
        self.leftAmount = @(arc4random() % 5287);
        self.publishProgress =  @(([self.totalAmount integerValue]-[self.leftAmount integerValue])*1.0/[self.totalAmount integerValue]*100.0);
        self.isSelected = NO;
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone {
    id copy = [[[self class] alloc] init];
    if (copy) {
        [copy setProductImgUrl:[self.productImgUrl copyWithZone:zone]];
        [copy setProductName:[self.productName copyWithZone:zone]];
        [copy setLeftAmount:[self.leftAmount copyWithZone:zone]];
        [copy setTotalAmount:[self.leftAmount copyWithZone:zone]];
        [copy setPublishProgress:[self.publishProgress copyWithZone:zone]];
    }
    return copy;
}

@end
