//
//  QuizViewController.m
//  QuizXIB
//
//  Created by Supakit Thanadittagorn on 8/24/2559 BE.
//  Copyright © 2559 Supakit Thanadittagorn. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@property (nonatomic) int index;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@end

@implementation QuizViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.questions = @[@"What is 7+7?", @"Capital of Thailand"];
    self.answers = @[@"14", @"Bangkok"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showQuestion: (UIButton *)sender {
    self.index += 1;
    if (self.index == [self.questions count]) {
        self.index = 0;
    }
    self.questionLabel.text = self.questions[self.index];
    self.answerLabel.text = @"???";
}

- (IBAction)showAnswer: (UIButton *)sender {
    self.answerLabel.text = self.answers[self.index];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
