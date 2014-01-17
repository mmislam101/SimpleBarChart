//
//  SBCEViewController.m
//  SimpleBarChartExample
//
//  Created by Mohammed Islam on 1/17/14.
//  Copyright (c) 2014 KSI Technology. All rights reserved.
//

#import "SBCEViewController.h"


@interface SBCEViewController ()

@end

@implementation SBCEViewController

- (void)loadView
{
	[super loadView];

	_values							= @[@30, @45, @44, @60, @95, @2, @8, @9];

	CGRect chartFrame				= CGRectMake(0.0,
												 0.0,
												 300.0,
												 300.0);
	_chart							= [[SimpleBarChart alloc] initWithFrame:chartFrame];
	_chart.center					= CGPointMake(self.view.frame.size.width / 2.0, self.view.frame.size.height / 2.0);
	_chart.delegate					= self;
	_chart.dataSource				= self;
	_chart.barShadowOffset			= CGSizeMake(2.0, 1.0);
	_chart.animationDuration		= 1.0;
	_chart.barShadowColor			= [UIColor grayColor];
	_chart.barShadowAlpha			= 0.5;
	_chart.barShadowRadius			= 1.0;
	_chart.barWidth					= 18.0;
	_chart.xLabelType				= SimpleBarChartXLabelTypeHorizontal;
	_chart.incrementValue			= 10;
	_chart.barTextType				= SimpleBarChartBarTextTypeRoof;
	_chart.barTextColor				= [UIColor blackColor];
	_chart.gridColor				= [UIColor grayColor];

	[self.view addSubview:_chart];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];

	[_chart reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark SimpleBarChartDataSource

- (NSUInteger)numberOfBarsInBarChart:(SimpleBarChart *)barChart
{
	return _values.count;
}

- (CGFloat)barChart:(SimpleBarChart *)barChart valueForBarAtIndex:(NSUInteger)index
{
	return [[_values objectAtIndex:index] floatValue];
}

//- (NSString *)barChart:(SimpleBarChart *)barChart textForBarAtIndex:(NSUInteger)index
//{
//	return [[_values objectAtIndex:index] stringValue];
//}

- (NSString *)barChart:(SimpleBarChart *)barChart xLabelForBarAtIndex:(NSUInteger)index
{
	return [[_values objectAtIndex:index] stringValue];
}

- (UIColor *)barChart:(SimpleBarChart *)barChart colorForBarAtIndex:(NSUInteger)index
{
	return [UIColor redColor];
}


@end
