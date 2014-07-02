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
    
   
    counter = 2;
    ans = 0;
    NSString *questionImageNo = @"test.png";
        
    //問題の画像が提示されるImageView
    UIImageView *questionView = [[UIImageView alloc] initWithFrame:CGRectMake(150, 250, 450, 450)];
    questionView.image = [UIImage imageNamed:questionImageNo];
    questionView.tag = 10;
    [self.view addSubview:questionView];
    //まるボタンの表示
    UIImage *circleimg = [UIImage imageNamed:@"circle.png"];
    UIButton *circleBtn = [[UIButton alloc] initWithFrame:CGRectMake(200, 800, 70, 70)];
    [circleBtn setImage:circleimg forState:UIControlStateNormal];
    circleBtn.tag = 1;
    [circleBtn addTarget:self action:@selector(circleCount:) forControlEvents:UIControlEventTouchUpInside];
    //[circleBtn addTarget:self action:@selector(ansCounter:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:circleBtn];
    //ばつボタンの表示
    UIImage *crossimg = [UIImage imageNamed:@"cross.png"];
    UIButton *crossBtn = [[UIButton alloc] initWithFrame:CGRectMake(500, 800, 70, 70)];
    [crossBtn setImage:crossimg forState:UIControlStateNormal];
    crossBtn.tag = 2;
    [crossBtn addTarget:self action:@selector(crossCount:) forControlEvents:UIControlEventTouchUpInside];
    //[crossBtn addTarget:self action:@selector(ansCounter:) forControlEvents:UIControlEventTouchUpInside];
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
- (void)circleCount:(id)sender
{
    NSArray *kotae = [[NSArray alloc] initWithObjects:@"0",@"0",@"0",@"1",@"1",@"0",@"1",@"1",@"1",@"0",
                      @"1",@"1",@"1",@"0",@"1",@"0",@"0",@"1",@"1",@"0",
                      @"0",@"1",@"0",@"0",@"1",@"0",@"0",@"1",nil];
    //self.questionView.image =[UIImage imageNamed:@"question2.jpg"];
    //[self.view addSubview:self.questionView];
    //NSString *questionImg = @"question2.jpg";
    //UIImageView *questionView = questionImg;
    //[self.view addSubview:questionView];
    NSString *questionAnserNo = [NSString stringWithFormat:@"%d",counter - 2];
    NSString *str = [kotae objectAtIndex:questionAnserNo];
    if ([str  isEqual: @"1"]) {
        ans++;
    }
    NSString *questionImegeNo = [NSString stringWithFormat:@"question%d.jpg", counter];
    UIImageView *questionView = (UIImageView*)[self.view viewWithTag:10];
    UIImage *img = [UIImage imageNamed:questionImegeNo];
    questionView.image = img;
    counter++;
    NSLog(@"%d",ans);
    //NSLog(@"%d", counter);
}

-(void)crossCount:(id)sender
{

    NSString *questionImegeNo = [NSString stringWithFormat:@"question%d.jpg", counter];
    UIImageView *questionView = (UIImageView*)[self.view viewWithTag:10];
    UIImage *img = [UIImage imageNamed:questionImegeNo];
    questionView.image = img;
    counter++;
}

//- (void)ansCounter:(id)sender
//{
    //NSArray *ar = @[@{@"questionNo":@"question1",@"circle":@1,@"cross":@0},@{@"questionNo":@"question2",@"circle": @0,@"cross":@1},@{@"questionNo":@"question3",@"circle": @1,@"cross":@0},nil];
    
    //UIButton *btnTag = sender;
    //int btnTag2 = btnTag.tag;
    
    //if (btnTag2 == 1) {
    
        //NSArray *no = [ar valueForKeyPath:@"cross"];
        //NSString *questionAnsNo = [NSString stringWithFormat:@"%d",counter - 2];
        //NSString *no2 = [no objectAtIndex:questionAnsNo];
        //int x = [no2 integerValue];
        //NSLog(@"%@",no);
        //ans = ans + x;
        //NSLog(@"%d", ans);

    //}
//}

@end
