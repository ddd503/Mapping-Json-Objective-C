//
//  JsonResponse.m
//  MappingJson
//
//  Created by kawaharadai on 2018/05/03.
//  Copyright © 2018年 kawaharadai. All rights reserved.
//

#import "JsonResponse.h"

@implementation JsonResponse
+ (NSDictionary <NSString *, NSString *> *)JSONKeyPathsByPropertyKey {
    return @{@"results" :@"results"};
}
+ (NSValueTransformer *)resultsJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:Results.class];
}
@end
