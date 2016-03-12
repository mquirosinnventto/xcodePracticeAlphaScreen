//
//  ViewController.m
//  alphaScreen
//
//  Created by mkdev on 12/03/16.
//  Copyright © 2016 Monitron. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    [self drawViewComponents];
    [self handleViewEvents];
}

- (void)drawViewComponents{
    self.buttonAlphaFifty = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.buttonAlphaHundred = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.buttonAlphaFifty.frame = CGRectMake(150, 50, 100, 44);
    self.buttonAlphaHundred.frame = CGRectMake(150, 100, 100, 44);
    self.buttonAlphaHundred.backgroundColor = [UIColor whiteColor];
    self.buttonAlphaFifty.backgroundColor = [UIColor whiteColor];
    [self.buttonAlphaFifty setTitle:@"Alpha 50%" forState:UIControlStateNormal];
    [self.buttonAlphaHundred setTitle:@"Alpha 100%" forState:UIControlStateNormal];
    [self.view addSubview:self.buttonAlphaFifty];
    [self.view addSubview:self.buttonAlphaHundred];
}

- (void)handleViewEvents{
    [self.buttonAlphaFifty addTarget: self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.buttonAlphaHundred addTarget: self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];

}

- (void)buttonPressed:(UIButton *)sender{
    if([sender isEqual: self.buttonAlphaFifty]){
        self.view.alpha = 0.5;
    }
    else{
        self.view.alpha = 1;
    }
}

- (void)loadView{
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    self.view = [[UIView alloc] initWithFrame:screenBounds];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
