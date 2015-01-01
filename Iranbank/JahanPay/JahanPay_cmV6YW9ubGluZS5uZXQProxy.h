//  IranBank
//
//  Created by Farzad Nazifi on 1/1/15.
//  Copyright (c) 2015 Benny Aballay. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "xpathquery.h"
#import "JahanPay_cmV6YW9ubGluZS5uZXQ.h"

#ifndef _Wsdl2CodeProxyDelegate
#define _Wsdl2CodeProxyDelegate
@protocol Wsdl2CodeProxyDelegate
//if service recieve an error this method will be called
-(void)proxyRecievedError:(NSException*)ex InMethod:(NSString*)method;
//proxy finished, (id)data is the object of the relevant method service
-(void)proxydidFinishLoadingData:(id)data InMethod:(NSString*)method;
@end
#endif

@interface JahanPay_cmV6YW9ubGluZS5uZXQProxy : NSObject
@property (nonatomic,assign) id<Wsdl2CodeProxyDelegate> proxyDelegate;
@property (nonatomic,copy)   NSString* url;
@property (nonatomic,retain) JahanPay_cmV6YW9ubGluZS5uZXQ* service;

-(id)initWithUrl:(NSString*)url AndDelegate:(id<Wsdl2CodeProxyDelegate>)delegate;
///Origin Return Type:NSString
-(void)requestpayment:(NSString *)_api :(NSString *)_price :(NSString *)_callback :(NSString *)_orderid :(NSString *)_description :(NSString *)_secure_params_b_gateway ;
///Origin Return Type:NSString
-(void)verification:(NSString *)_api :(NSString *)_price :(NSString *)_au ;
@end
