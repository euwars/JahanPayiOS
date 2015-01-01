//  IranBank
//
//  Created by Farzad Nazifi on 1/1/15.
//  Copyright (c) 2015 Benny Aballay. All rights reserved.
//

#import "JahanPay_cmV6YW9ubGluZS5uZXQProxy.h"

@implementation JahanPay_cmV6YW9ubGluZS5uZXQProxy

-(id)initWithUrl:(NSString*)url AndDelegate:(id<Wsdl2CodeProxyDelegate>)delegate{
    self = [super init];
    if (self != nil){
        self.service = [[JahanPay_cmV6YW9ubGluZS5uZXQ alloc] init];
        [self.service setUrl:url];
        [self setUrl:url];
        [self setProxyDelegate:delegate];
    }
    return self;
}

///Origin Return Type:NSString
-(void)requestpayment:(NSString *)_api :(NSString *)_price :(NSString *)_callback :(NSString *)_orderid :(NSString *)_description :(NSString *)_secure_params_b_gateway {
    [self.service addTarget:self AndAction:&requestpaymentTarget];
    [self.service requestpayment:_api :_price :_callback :_orderid :_description :_secure_params_b_gateway ];
}

void requestpaymentTarget(JahanPay_cmV6YW9ubGluZS5uZXQProxy* target, id sender, NSString* xml){
    @try{
        NSString *xmldata = [xml stringByReplacingOccurrencesOfString:@"xmlns=\"http://www.jahanpay.com/soap/JahanPay_cmV6YW9ubGluZS5uZXQ=\"" withString:@""];
        NSData *data = [xmldata dataUsingEncoding:NSUTF8StringEncoding];
        XPathQuery *xpathQuery = [[XPathQuery alloc] init];
        NSString * query = [NSString stringWithFormat:@"/soap:Envelope/soap:Body/*/*"];
        NSArray *arrayOfWSData = [xpathQuery newXMLXPathQueryResult:data andQuery:query];
        if([arrayOfWSData count] == 0 ){
            NSException *exception = [NSException exceptionWithName:@"Wsdl2Code" reason: @"Response is nil" userInfo: nil];
            if (target.proxyDelegate != nil){
                [target.proxyDelegate proxyRecievedError:exception InMethod:@"requestpayment"];
                return;
            }
        }
        NSString *nodeContentValue = [[NSString alloc] initWithString:[[arrayOfWSData objectAtIndex:0] objectForKey:@"nodeContent"]];
        NSString* result = nil;
        if (nodeContentValue !=nil){
            result = [[NSString alloc] initWithString:nodeContentValue];
        }
         if (target.proxyDelegate != nil){
            [target.proxyDelegate proxydidFinishLoadingData:result InMethod:@"requestpayment"];
            return;
        }
    }
    @catch(NSException *ex){
        if (target.proxyDelegate != nil){
            [target.proxyDelegate proxyRecievedError:ex InMethod:@"requestpayment"];
            return;
        }
    }
}

///Origin Return Type:NSString
-(void)verification:(NSString *)_api :(NSString *)_price :(NSString *)_au {
    [self.service addTarget:self AndAction:&verificationTarget];
    [self.service verification:_api :_price :_au ];
}

void verificationTarget(JahanPay_cmV6YW9ubGluZS5uZXQProxy* target, id sender, NSString* xml){
    @try{
        NSString *xmldata = [xml stringByReplacingOccurrencesOfString:@"xmlns=\"http://www.jahanpay.com/soap/JahanPay_cmV6YW9ubGluZS5uZXQ=\"" withString:@""];
        NSData *data = [xmldata dataUsingEncoding:NSUTF8StringEncoding];
        XPathQuery *xpathQuery = [[XPathQuery alloc] init];
        NSString * query = [NSString stringWithFormat:@"/soap:Envelope/soap:Body/*/*"];
        NSArray *arrayOfWSData = [xpathQuery newXMLXPathQueryResult:data andQuery:query];
        if([arrayOfWSData count] == 0 ){
            NSException *exception = [NSException exceptionWithName:@"Wsdl2Code" reason: @"Response is nil" userInfo: nil];
            if (target.proxyDelegate != nil){
                [target.proxyDelegate proxyRecievedError:exception InMethod:@"verification"];
                return;
            }
        }
        NSString *nodeContentValue = [[NSString alloc] initWithString:[[arrayOfWSData objectAtIndex:0] objectForKey:@"nodeContent"]];
        NSString* result = nil;
        if (nodeContentValue !=nil){
            result = [[NSString alloc] initWithString:nodeContentValue];
        }
         if (target.proxyDelegate != nil){
            [target.proxyDelegate proxydidFinishLoadingData:result InMethod:@"verification"];
            return;
        }
    }
    @catch(NSException *ex){
        if (target.proxyDelegate != nil){
            [target.proxyDelegate proxyRecievedError:ex InMethod:@"verification"];
            return;
        }
    }
}
@end
