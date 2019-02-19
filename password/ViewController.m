//
//  ViewController.m
//  password
//
//  Created by 张岳涛 on 19/2/16.
//  Copyright © 2019年 张岳涛. All rights reserved.
//

#import "ViewController.h"
#import "OKViewController.h"

@interface ViewController ()

@end

@implementation ViewController

{
    
    __weak IBOutlet UITextField *passWord;
    NSUserDefaults *ud;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ud = [NSUserDefaults standardUserDefaults];
    [ud setObject:@"aiueo" forKey:@"password"];
}

- (IBAction)next:(id)sender {
    if ([passWord.text isEqualToString:@"aiueo"])
    {
        OKViewController *oKViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ok"];
        
        [self presentViewController:oKViewController animated:YES completion:nil];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
