//
//  Results.m
//  MappingJson
//
//  Created by kawaharadai on 2018/05/03.
//  Copyright © 2018年 kawaharadai. All rights reserved.
//

#import "Results.h"

@implementation Results
+ (NSDictionary <NSString *, NSString *> *)JSONKeyPathsByPropertyKey {
    return @{@"artistName" :@"artistName",
             @"trackName" :@"trackName",
             @"artworkUrl100" :@"artworkUrl100"};
}
@end
