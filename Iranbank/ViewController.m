//
//  ViewController.m
//  IranBank
//
//  Created by Farzad Nazifi on 1/1/15.
//  Copyright (c) 2015 Benny Aballay. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController{
    IBOutlet UITextField *actionNumber;
    JahanPay_cmV6YW9ubGluZS5uZXQProxy *jahanPay;
    IBOutlet UITextField *verifyText;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //JahanPay proxy init
    jahanPay = [[JahanPay_cmV6YW9ubGluZS5uZXQProxy alloc]initWithUrl:@"http://www.jahanpay.com/webservice?wsdl" AndDelegate:self];
    
    // Add an observer that will respond to callback
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(setVerifyID:)
                                                 name:@"VerifyNotfication" object:nil];
}

- (void)setVerifyID:(NSNotification *)note {
    NSLog(@"Verify not recevied");
}

//Send Request Action
- (IBAction)SendRequest:(id)sender {
    [jahanPay requestpayment:@"API" :@"PRICE" :@"iranBank://" :@"ORDER ID" :@"DESCRIPTION" :@"GATEWAY"];
}

//Send Verify Action
- (IBAction)SendVerify:(id)sender {
    [jahanPay verification:@"API" :@"PRICE" :@"AU Number"];
}

//if service recieve an error this method will be called
-(void)proxyRecievedError:(NSException*)ex InMethod:(NSString*)method{
    NSLog(@"Exeption in service %@",method);
}

//proxy finished, (id)data is the object of the relevant method service
-(void)proxydidFinishLoadingData:(id)data InMethod:(NSString*)method{
    NSLog(@"%@ marchend id code is:%@",method,data);
    NSString *dataSTR = [NSString stringWithString:data];

    if ([method isEqualToString:@"requestpayment"]) {
        actionNumber.text = data;
        if (dataSTR.length > 3) {
            UIApplication *app = [UIApplication sharedApplication];
            NSString *url = @"http://www.jahanpay.com/pay_invoice/";
            NSString *finalurl  = [NSString stringWithFormat:@"%@%@", url, data];
            NSURL *ourURL = [NSURL URLWithString:finalurl];
            [app openURL:ourURL];
        };

    }else if ([method isEqualToString:@"verification"]){
        verifyText.text = data;
    }else{
        NSLog(@"Error");
    }
}

- (void)dealloc {
    [actionNumber release];
    [jahanPay release];
    [verifyText release];
    [super dealloc];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
