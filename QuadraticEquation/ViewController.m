//
//  ViewController.m
//  QuadraticEquation
//
//  Created by mac on 21.03.2018.
//  Copyright © 2018 mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textA;
@property (weak, nonatomic) IBOutlet UITextField *textB;
@property (weak, nonatomic) IBOutlet UITextField *textC;
@property (weak, nonatomic) IBOutlet UILabel *rezalt1;
@property (weak, nonatomic) IBOutlet UILabel *rezalt2;

@end

@implementation ViewController
- (IBAction)start:(UIButton *)sender {
    //a(x*x)+b*x+c=0
    double D,a,b,c,x1=0,x2=0;
    a=[self.textA.text intValue];
    b=[self.textB.text intValue];
    c=[self.textC.text intValue];
    
    D=(b*b)-4*a*c;
    
    if(D>0){
        x1=(-b+sqrt((b*b)-4*a*c))/2*a;
        x2=(-b-sqrt((b*b)-4*a*c))/2*a;
        [self.rezalt1 setText:[NSString stringWithFormat:@"%.2lf",x1]];
        self.rezalt1.hidden=NO;
        [self.rezalt2 setText:[NSString stringWithFormat:@"%.2lf",x2]];
        self.rezalt2.hidden=NO;
    }
    if(D==0){
        x1=-b/2*a;
        [self.rezalt1 setText:[NSString stringWithFormat:@"%.2lf",x1]];
        self.rezalt1.hidden=NO;
    }
    if(D<0){
        [self.rezalt1 setText:@"Корней нет"];
        self.rezalt1.hidden=NO;
    }
    
}
- (IBAction)Clear:(UIButton *)sender {
    [self.textA setText:[NSString stringWithFormat:@""]];
    [self.textB setText:[NSString stringWithFormat:@""]];
    [self.textC setText:[NSString stringWithFormat:@""]];
    [self.rezalt1 setText:[NSString stringWithFormat:@"0"]];
    [self.rezalt2 setText:[NSString stringWithFormat:@"0"]];
    self.rezalt1.hidden=YES;
    self.rezalt2.hidden=YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
