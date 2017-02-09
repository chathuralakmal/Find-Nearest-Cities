//
//  NearestCities.h
//  NearestCities
//
//  Created by Chathura on 2/9/17.
//  Copyright © 2017 Chathura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
@protocol NearestCitiesDelegate <NSObject>

@optional

-(void)didReceiveNearestCitiesResponse :(NSDictionary *)Response;

@end

@interface NearestCities : NSObject

-(void)findNearByLocations:(NSDictionary *)parameters;

@property ( nonatomic, retain ) id <NearestCitiesDelegate> delegate;

@end
