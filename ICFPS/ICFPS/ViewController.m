//
//  ViewController.m
//  ICFPS
//
//  Created by xiongan on 16/9/8.
//  Copyright © 2016年 icoder. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 200;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
       static NSString *ID = @"ddd";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    cell.textLabel.text = @"😊🐊😊🐸🐇👌👌👌🏷😊🐊😊🐸🐇👌👌👌🏷😊🐊😊🐸🐇👌👌👌🏷😊🐊😊🐸🐇👌👌👌🏷😊🐊😊🐸🐇👌👌👌🏷😊🐊😊🐸🐇👌👌👌🏷😊🐊😊🐸🐇👌👌👌🏷😊🐊😊🐸🐇👌👌👌🏷😊🐊😊🐸🐇👌👌👌🏷😊🐊😊🐸🐇👌👌👌🏷😊🐊😊🐸🐇👌👌👌🏷😊🐊😊🐸🐇👌👌👌🏷";
    cell.detailTextLabel.text = @"😊🐊😊🐸🐇👌👌👌🏷😊🐊😊🐸🐇👌👌👌🏷😊🐊😊🐸🐇👌👌👌🏷😊🐊😊🐸🐇👌👌👌🏷😊🐊😊🐸🐇👌👌👌🏷😊🐊😊🐸🐇👌👌👌🏷😊🐊😊🐸🐇👌👌👌🏷😊🐊😊🐸🐇👌👌👌🏷😊🐊😊🐸🐇👌👌👌🏷😊🐊😊🐸🐇👌👌👌🏷😊🐊😊🐸🐇👌👌👌🏷😊🐊😊🐸🐇👌👌👌🏷";
    [cell.textLabel sizeToFit];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
