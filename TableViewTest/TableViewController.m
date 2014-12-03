//
//  TableViewController.m
//  TableViewTest
//
//  Created by pronebird on 03/12/14.
//  Copyright (c) 2014 codeispoetry.ru. All rights reserved.
//

#import "TableViewController.h"
#import "FlameCell.h"

@implementation TableViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	self.tableView.rowHeight = UITableViewAutomaticDimension;
	self.tableView.estimatedRowHeight = 44.0f;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return 10;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	FlameCell* cell = (FlameCell*)[tableView dequeueReusableCellWithIdentifier:@"Flame" forIndexPath:indexPath];

	cell.titleLabel.text = @"Awesome flame";
	cell.flameLabel.text = @"Flame flame flame flame flame Flame flame flame flame flame Flame flame flame flame flame Flame flame flame flame flame Flame flame flame flame flame Flame flame flame flame flame Flame flame flame flame flame Flame flame flame flame flame Flame flame flame flame flame";

	return cell;
}

@end
