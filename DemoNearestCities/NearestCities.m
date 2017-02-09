//
//  NearestCities.m
//  NearestCities
//
//  Created by Chathura on 2/9/17.
//  Copyright © 2017 Chathura. All rights reserved.
//

#import "NearestCities.h"


@implementation NearestCities

@synthesize delegate;

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

-(void)findNearByLocations:(NSDictionary *)parameters{
    NSMutableDictionary * params = [[NSMutableDictionary alloc]initWithDictionary:parameters];
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc]initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    NSLog(@"Details %@",parameters);
    [manager GET:@"http://api.geonames.org/findNearbyPostalCodesJSON" parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"success!");
        [delegate didReceiveNearestCitiesResponse:responseObject];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error: %@", error);
    }];

}

@end
