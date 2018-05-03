//
//  DataSource.m
//  MappingJson
//
//  Created by kawaharadai on 2018/05/03.
//  Copyright © 2018年 kawaharadai. All rights reserved.
//

#import "DataSource.h"

@implementation DataSource

- (void)create {
    // ローカルからjsonを取得
    NSString *path = [NSBundle.mainBundle pathForResource: @"Sample_APIResponse"
                                                   ofType: @"json"];
    
    NSData *data = [NSData dataWithContentsOfFile:path];
    
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData: data
                                                        options: NSJSONReadingAllowFragments
                                                          error: nil];
    
    // パースしてプロトコルで返す
    JsonResponse *jsonResponse = [MTLJSONAdapter modelOfClass: JsonResponse.class
                                           fromJSONDictionary: dic
                                                        error: nil];
    
    __weak typeof(self) wself = self;
    if ([wself.delegate respondsToSelector: @selector(createdDatasource:)]) {
        [wself.delegate createdDatasource: jsonResponse];
    }
    
}

@end
