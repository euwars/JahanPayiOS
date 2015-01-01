//  IranBank
//
//  Created by Farzad Nazifi on 1/1/15.
//  Copyright (c) 2015 Benny Aballay. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "JahanPay_cmV6YW9ubGluZS5uZXQ_Enums.h"


@interface JahanPay_cmV6YW9ubGluZS5uZXQ : NSObject
{
}
@property SoapProtocolVersion soapVersion;
@property BOOL allowAutoRedirect;
@property BOOL enableDecompression;
@property (nonatomic, copy) NSString *userAgent;
@property BOOL unsafeAuthenticatedConnectionSharing;
@property BOOL useDefaultCredentials;
@property (nonatomic, copy) NSString *connectionGroupName;
@property BOOL preAuthenticate;
@property (nonatomic, copy) NSString *url;
@property int timeout;
@property (nonatomic, assign) void(*targetAction)(id target,id sender,NSString* xml);
@property (nonatomic,assign) id actionDelegate;
@property (nonatomic, strong) NSURLConnection *wsConnection;
@property (nonatomic, strong) NSMutableData *webData;
@property (nonatomic, strong) NSError *error;
@property (nonatomic, strong) NSMutableDictionary *requestHeaders;
@property (nonatomic, copy)   NSString *eventName;

///Origin Return Type:NSString
-(void)requestpayment:(NSString *)_api :(NSString *)_price :(NSString *)_callback :(NSString *)_orderid :(NSString *)_description :(NSString *)_secure_params_b_gateway ;
///Origin Return Type:NSString
-(void)verification:(NSString *)_api :(NSString *)_price :(NSString *)_au ;
-(id) initWithTarget:(id)target  AndAction:(void(*)(id target,id sender ,NSString* xml))action;
-(void) addTarget:(id)target AndAction:(void(*)(id target,id sender ,NSString* xml))action;
@end
