//
//  ViewController.m
//  NavegationProject
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ViewController.h"
#import "BlueViewController.h"
#import "YellowViewController.h"
#import "RedViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.valor1 = 30;
    self.valor2 = 20;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    
    if([identifier isEqualToString:@"segueAzul"]){
        return self.valor1 < self.valor2;
    }
    
    return YES;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"segueAzul"]){
    
        BlueViewController *blueViewController = [segue destinationViewController];
        blueViewController.nome = @"Kleyton teste";
        
    
    }else if([segue.identifier isEqualToString:@"segueAmarelo"]){
        
        ((YellowViewController *) [segue destinationViewController]).nome = @"Kleyton teste";
        
    }else if([segue.identifier isEqualToString:@"segueVermelho"]){
        ((RedViewController *) [segue destinationViewController]).nome = @"Kleyton teste";
    }
}


@end
