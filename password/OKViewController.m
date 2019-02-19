//
//  OKViewController.m
//  password
//
//  Created by 张岳涛 on 19/2/16.
//  Copyright © 2019年 张岳涛. All rights reserved.
//

#import "OKViewController.h"
#import <Social/Social.h>

@interface OKViewController ()

@end

@implementation OKViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)selectPost:(id)sender {
    
    UIAlertController *ac = [UIAlertController alertControllerWithTitle:@"投稿画面" message:@"どこへ投稿されますか？" preferredStyle:UIAlertControllerStyleAlert];
    
    //キャンセル用のボタンとアクションを生成
    UIAlertAction *cancel =
    [UIAlertAction actionWithTitle:@"キャンセル"
                             style:UIAlertActionStyleCancel
                           handler:^(UIAlertAction * action) {
                               
                               
                           }];
    
    UIAlertAction *twitter = [UIAlertAction actionWithTitle:@"Twitter" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
        
                            // ボタンタップ時の処理
        
                            SLComposeViewController *vc = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        
                            [vc setInitialText:@"パスワードを突破しました!"];
        
                            [self presentViewController:vc animated:YES completion:nil];
        
    }];
    
    
    // Facebook用のアクションを生成
    UIAlertAction *facebook =
    [UIAlertAction actionWithTitle:@"Facebook"
                             style:UIAlertActionStyleDefault
                           handler:^(UIAlertAction * action) {
                               // ボタンタップ時の処理
                               
                               SLComposeViewController *vc = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
                               
                               [vc setInitialText:@"パスワードを突破しました"];
                               
                               [self presentViewController:vc animated:YES completion:nil];
                               
                               
                               
                           }];
    
    //コントローラにボタンたちを追加
    [ac addAction:cancel];
    [ac addAction:facebook];
    [ac addAction:twitter];
    
    
    
    // アラートを呼び出す
    [self presentViewController:ac animated:YES completion:nil];
    
    
    
}

- (IBAction)share:(id)sender {
    
    SLComposeViewController *vc = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    
    [vc setInitialText:@"パスワードを突破しました!"];
    
    [self presentViewController:vc animated:YES completion:nil];
    
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

@end
