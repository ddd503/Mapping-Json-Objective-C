//
//  DataSource.h
//  MappingJson
//
//  Created by kawaharadai on 2018/05/03.
//  Copyright © 2018年 kawaharadai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JsonResponse.h"

@protocol DataSourceDelegate <NSObject>
@optional
- (void)createdDatasource:(JsonResponse *)jsonResponse;
@end

@interface DataSource : NSObject
@property (nonatomic, weak) id<DataSourceDelegate> delegate;
- (void)create;
@end
