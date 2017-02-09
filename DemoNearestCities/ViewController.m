//
//  ViewController.m
//  DemoNearestCities
//
//  Created by Chathura on 2/9/17.
//  Copyright © 2017 Chathura. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NearestCities *serviceObj = [[NearestCities alloc] init];
    serviceObj.delegate = self;
    
    NSString *username = @"USERNAME";
    
    NSDictionary *parameters = @{@"username" :username,
                                 @"lat": @"6.9271",
                                 @"lng": @"79.8612",
                                 };
    
    [serviceObj performSelectorInBackground:@selector(findNearByLocations:) withObject:parameters];
    
}

- (void)didReceiveNearestCitiesResponse:(NSDictionary *)Response{
    NSLog(@"%@",Response);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
