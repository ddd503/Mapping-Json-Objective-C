//
//  ViewController.m
//  MappingJson
//
//  Created by kawaharadai on 2018/05/03.
//  Copyright © 2018年 kawaharadai. All rights reserved.
//

#import "ViewController.h"
#import "DataSource.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface ViewController () <DataSourceDelegate>
@property (weak, nonatomic) IBOutlet UILabel *artistNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *recordNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *recordImageView;
@property (nonatomic) DataSource *dataSource;
@end

@implementation ViewController

#pragma mark - LifeCycle Methods
- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataSource = [DataSource new];
    self.dataSource.delegate = self;
}

#pragma mark - Action Methods
- (IBAction)getData:(id)sender {
    [self.dataSource create];
}

#pragma mark - DataSourceDelegate Methods
- (void)createdDatasource:(JsonResponse *)jsonResponse {
    // パースしたデータを画面に表示
    [self.artistNameLabel setText: jsonResponse.results[0].artistName];
    [self.recordNameLabel setText: jsonResponse.results[0].trackName];
    [self.recordImageView sd_setImageWithURL: [NSURL URLWithString: jsonResponse.results[0].artworkUrl100]];
    NSLog(@"データ表示完了");
}

@end
