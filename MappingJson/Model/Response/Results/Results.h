//
//  Results.h
//  MappingJson
//
//  Created by kawaharadai on 2018/05/03.
//  Copyright © 2018年 kawaharadai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle.h>

@interface Results : MTLModel<MTLJSONSerializing>
@property (nonatomic) NSString *artistName;
@property (nonatomic) NSString *trackName;
@property (nonatomic) NSString *artworkUrl100;
@end
