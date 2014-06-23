//
//  QuestionViewController.m
//  QuestionGame02
//
//  Created by 木村 友真 on 2014/06/23.
//  Copyright (c) 2014年 yuma kimura. All rights reserved.
//

#import "QuestionViewController.h"

@interface QuestionViewController ()

@end

@implementation QuestionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //問題の画像が提示されるImageView
    UIImageView *questionView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    questionView.image = [UIImage imageNamed:@"question1.png"];
    [self.view addSubview:questionView];
    //まるボタンの表示
    UIImage *circleimg = [UIImage imageNamed:@"circle.png"];
    UIButton *circleBtn = [[UIButton alloc] initWithFrame:CGRectMake(200, 800, 70, 70)];
    [circleBtn setImage:circleimg forState:UIControlStateNormal];
    [circleBtn addTarget:self action:@selector(countUp) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:circleBtn];
    //ばつボタンの表示
    UIImage *crossimg = [UIImage imageNamed:@"cross.png"];
    UIButton *crossBtn = [[UIButton alloc] initWithFrame:CGRectMake(500, 800, 70, 70)];
    [crossBtn setImage:crossimg forState:UIControlStateNormal];
    [crossBtn addTarget:self action:@selector(countUp) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:crossBtn];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)countUp:(id)sender
{
    counter++;
    NSLog(@"%d", counter);
}

@end
