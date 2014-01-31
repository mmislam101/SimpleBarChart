//
//  SBCEViewController.h
//  SimpleBarChartExample
//
//  Created by Mohammed Islam on 1/17/14.
//  Copyright (c) 2014 KSI Technology. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SimpleBarChart.h"

@interface SBCEViewController : UIViewController <SimpleBarChartDataSource, SimpleBarChartDelegate>
{
	NSArray *_values;

	SimpleBarChart *_chart;

	NSArray *_barColors;
	NSInteger _currentBarColor;
}

@end
