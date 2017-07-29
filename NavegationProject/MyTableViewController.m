//
//  MyTableViewController.m
//  NavegationProject
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "MyTableViewController.h"
#import "CustomTableViewCell.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.array = @[@"Segunda",@"Terça",@"Quarta",@"Quinta",@"Sexta",@"Sábado",@"Domingo"];
    
    self.arrayDicionario = @[@{@"nome":@"Kleyton", @"email": @"kleytonandroid@gmail.com", @"rua": @"rua nova descoberta",@"pais":@"brasil"},@{@"nome":@"Kleyton", @"email": @"kleytonandroid@gmail.com", @"rua": @"rua nova descoberta",@"pais":@"brasil"}];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
 
*/

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.arrayDicionario.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"orangeCell" forIndexPath:indexPath];
//    
//    cell.textLabel.text = self.array[indexPath.row];
//    return cell;
    
        CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomCell" forIndexPath:indexPath];
    
    NSDictionary *dic = self.arrayDicionario[indexPath.row];
    
    cell.nomeLabel.text = dic[@"nome"];
    cell.emailLabel.text =  dic[@"email"];
    cell.ruaLabel.text =  dic[@"rua"];
    cell.paisLabel.text =  dic[@"pais"];
        return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

@end
