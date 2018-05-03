//
//  JsonResponse.h
//  MappingJson
//
//  Created by kawaharadai on 2018/05/03.
//  Copyright © 2018年 kawaharadai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle.h>
#import "Results.h"

@interface JsonResponse : MTLModel<MTLJSONSerializing>
@property (nonatomic) NSArray<Results *> *results;
@end
