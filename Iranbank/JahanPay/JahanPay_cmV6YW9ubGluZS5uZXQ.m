//  IranBank
//
//  Created by Farzad Nazifi on 1/1/15.
//  Copyright (c) 2015 Benny Aballay. All rights reserved.
//

#import "JahanPay_cmV6YW9ubGluZS5uZXQ.h" 


@implementation JahanPay_cmV6YW9ubGluZS5uZXQ
-(NSString*)toString:(BOOL)addNameWrap {
    NSMutableString *nsString = [NSMutableString string];
    if (addNameWrap == YES)
        [nsString appendString:@"<JahanPay_cmV6YW9ubGluZS5uZXQ>" ];
    [nsString appendFormat:@"<SoapVersion>%@</SoapVersion>" , [JahanPay_cmV6YW9ubGluZS5uZXQ_Enums SoapProtocolVersionToString:[self soapVersion]]];
    [nsString appendFormat:@"<AllowAutoRedirect>%d</AllowAutoRedirect>" , [self allowAutoRedirect]];
    [nsString appendFormat:@"<EnableDecompression>%d</EnableDecompression>" , [self enableDecompression]];
    if (self.userAgent != nil) {
        [nsString appendFormat:@"<UserAgent>%@</UserAgent>" , [self userAgent]];
    }
    [nsString appendFormat:@"<UnsafeAuthenticatedConnectionSharing>%d</UnsafeAuthenticatedConnectionSharing>" , [self unsafeAuthenticatedConnectionSharing]];
    [nsString appendFormat:@"<UseDefaultCredentials>%d</UseDefaultCredentials>" , [self useDefaultCredentials]];
    if (self.connectionGroupName != nil) {
        [nsString appendFormat:@"<ConnectionGroupName>%@</ConnectionGroupName>" , [self connectionGroupName]];
    }
    [nsString appendFormat:@"<PreAuthenticate>%d</PreAuthenticate>" , [self preAuthenticate]];
    if (self.url != nil) {
        [nsString appendFormat:@"<Url>%@</Url>" , [self url]];
    }
    [nsString appendFormat:@"<Timeout>%d</Timeout>" , [self timeout]];
    if (addNameWrap == YES)
        [nsString appendString:@"</JahanPay_cmV6YW9ubGluZS5uZXQ>" ];
    return nsString;
}

///Origin Return Type:NSString
-(void)requestpayment:(NSString *)_api :(NSString *)_price :(NSString *)_callback :(NSString *)_orderid :(NSString *)_description :(NSString *)_secure_params_b_gateway {
    NSMutableString *params = [NSMutableString string];
    [params appendString:@"<?xml version=\"1.0\" encoding=\"utf-8\"?><soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\"><soap:Body>"];
    [params appendString:@"<requestpayment xmlns=\"http://www.jahanpay.com/soap/JahanPay_cmV6YW9ubGluZS5uZXQ=\">"];
    [params appendFormat:@"<_api>%@</_api>" , _api];
    [params appendFormat:@"<_price>%@</_price>" , _price];
    [params appendFormat:@"<_callback>%@</_callback>" , _callback];
    [params appendFormat:@"<_orderid>%@</_orderid>" , _orderid];
    [params appendFormat:@"<_description>%@</_description>" , _description];
    [params appendFormat:@"<_secure_params_b_gateway>%@</_secure_params_b_gateway>" , _secure_params_b_gateway];
    [params appendString:@"</requestpayment>"];
    [params appendString:@"</soap:Body></soap:Envelope>"];
    NSURL *onwURL = [[NSURL alloc] initWithString:[self url]];
    NSMutableURLRequest *onwreq = [NSMutableURLRequest requestWithURL:onwURL cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData timeoutInterval:30.0];
    NSString *messageLen = [NSString stringWithFormat:@"%lu", (unsigned long)[params length]];
    [onwreq addValue:[onwURL host] forHTTPHeaderField:@"Host"];
    [onwreq addValue:@"http://www.jahanpay.com/soap/JahanPay_cmV6YW9ubGluZS5uZXQ=/requestpayment" forHTTPHeaderField:@"SOAPAction"];
    [onwreq addValue:@"text/xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
    [onwreq addValue:messageLen forHTTPHeaderField:@"Content-Length"];
    [onwreq setHTTPMethod:@"POST"];
    [onwreq setHTTPBody:[params dataUsingEncoding:NSUTF8StringEncoding]];
    for (NSString *key  in [self.requestHeaders allKeys]) {
    		[onwreq addValue:[self.requestHeaders valueForKey:key] forHTTPHeaderField:key];
    }
    self.wsConnection = [[NSURLConnection alloc] initWithRequest:onwreq delegate:self];
    [self setEventName:@"http://www.jahanpay.com/soap/JahanPay_cmV6YW9ubGluZS5uZXQ=requestpaymentDidFinish"];
}

///Origin Return Type:NSString
-(void)verification:(NSString *)_api :(NSString *)_price :(NSString *)_au {
    NSMutableString *params = [NSMutableString string];
    [params appendString:@"<?xml version=\"1.0\" encoding=\"utf-8\"?><soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\"><soap:Body>"];
    [params appendString:@"<verification xmlns=\"http://www.jahanpay.com/soap/JahanPay_cmV6YW9ubGluZS5uZXQ=\">"];
    [params appendFormat:@"<_api>%@</_api>" , _api];
    [params appendFormat:@"<_price>%@</_price>" , _price];
    [params appendFormat:@"<_au>%@</_au>" , _au];
    [params appendString:@"</verification>"];
    [params appendString:@"</soap:Body></soap:Envelope>"];
    NSURL *onwURL = [[NSURL alloc] initWithString:[self url]];
    NSMutableURLRequest *onwreq = [NSMutableURLRequest requestWithURL:onwURL cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData timeoutInterval:30.0];
    NSString *messageLen = [NSString stringWithFormat:@"%lu", (unsigned long)[params length]];
    [onwreq addValue:[onwURL host] forHTTPHeaderField:@"Host"];
    [onwreq addValue:@"http://www.jahanpay.com/soap/JahanPay_cmV6YW9ubGluZS5uZXQ=/verification" forHTTPHeaderField:@"SOAPAction"];
    [onwreq addValue:@"text/xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
    [onwreq addValue:messageLen forHTTPHeaderField:@"Content-Length"];
    [onwreq setHTTPMethod:@"POST"];
    [onwreq setHTTPBody:[params dataUsingEncoding:NSUTF8StringEncoding]];
    for (NSString *key  in [self.requestHeaders allKeys]) {
    		[onwreq addValue:[self.requestHeaders valueForKey:key] forHTTPHeaderField:key];
    }
    self.wsConnection = [[NSURLConnection alloc] initWithRequest:onwreq delegate:self];
    [self setEventName:@"http://www.jahanpay.com/soap/JahanPay_cmV6YW9ubGluZS5uZXQ=verificationDidFinish"];
}
#pragma mark - NSCoding
-(id)initWithCoder:(NSCoder *)decoder{
    self = [super init];
    if (self){
        self.soapVersion = [decoder decodeInt32ForKey:@"soapVersion"];
        self.allowAutoRedirect = [decoder decodeInt32ForKey:@"allowAutoRedirect"];
        self.enableDecompression = [decoder decodeInt32ForKey:@"enableDecompression"];
        self.userAgent = [decoder decodeObjectForKey:@"userAgent"];
        self.unsafeAuthenticatedConnectionSharing = [decoder decodeInt32ForKey:@"unsafeAuthenticatedConnectionSharing"];
        self.useDefaultCredentials = [decoder decodeInt32ForKey:@"useDefaultCredentials"];
        self.connectionGroupName = [decoder decodeObjectForKey:@"connectionGroupName"];
        self.preAuthenticate = [decoder decodeInt32ForKey:@"preAuthenticate"];
        self.url = [decoder decodeObjectForKey:@"url"];
        self.timeout = [decoder decodeInt32ForKey:@"timeout"];
    }
    return self;
}
-(void)encodeWithCoder:(NSCoder *)encoder{
    [encoder encodeInt32:self.soapVersion forKey:@"soapVersion"];
    [encoder encodeInt32:self.allowAutoRedirect forKey:@"allowAutoRedirect"];
    [encoder encodeInt32:self.enableDecompression forKey:@"enableDecompression"];
    [encoder encodeObject:self.userAgent forKey:@"userAgent"];
    [encoder encodeInt32:self.unsafeAuthenticatedConnectionSharing forKey:@"unsafeAuthenticatedConnectionSharing"];
    [encoder encodeInt32:self.useDefaultCredentials forKey:@"useDefaultCredentials"];
    [encoder encodeObject:self.connectionGroupName forKey:@"connectionGroupName"];
    [encoder encodeInt32:self.preAuthenticate forKey:@"preAuthenticate"];
    [encoder encodeObject:self.url forKey:@"url"];
    [encoder encodeInt32:self.timeout forKey:@"timeout"];
}
-(id)copyWithZone:(NSZone *)zone {
    JahanPay_cmV6YW9ubGluZS5uZXQ *finalCopy = [[[self class] allocWithZone: zone] init];
    
    finalCopy.soapVersion = self.soapVersion;
    
    finalCopy.allowAutoRedirect = self.allowAutoRedirect;
    
    finalCopy.enableDecompression = self.enableDecompression;
    
    NSString *copy4 = [self.userAgent copy];
    finalCopy.userAgent = copy4;
    
    finalCopy.unsafeAuthenticatedConnectionSharing = self.unsafeAuthenticatedConnectionSharing;
    
    finalCopy.useDefaultCredentials = self.useDefaultCredentials;
    
    NSString *copy7 = [self.connectionGroupName copy];
    finalCopy.connectionGroupName = copy7;
    
    finalCopy.preAuthenticate = self.preAuthenticate;
    
    NSString *copy9 = [self.url copy];
    finalCopy.url = copy9;
    
    finalCopy.timeout = self.timeout;
    
    return finalCopy;
}
-(id)init{
    self = [super init];
    if (self){
        [self setUrl:@""];
    }
    return self;
}

-(id) initWithTarget:(id)target  AndAction:(void(*)(id target,id sender ,NSString* xml))action;{
    self = [super init];
    if (self != nil) {
        [self setTargetAction:action];
        [self setActionDelegate:target];
    }
    return self;
}

-(void) addTarget:(id)target AndAction:(void(*)(id target,id sender,NSString* xml))action{
    self.actionDelegate = target;
    self.targetAction = action;
}

-(void)cancelConnection{
[self.wsConnection cancel];
}
#pragma mark -
#pragma mark NSConnection events
-(void)connection:(NSURLConnection *) connection didReceiveResponse:(NSURLResponse *) response{
    self.webData = [[NSMutableData alloc] init];
    [self.webData setLength:0];
}
-(void)connection:(NSURLConnection *) connection didReceiveData:(NSData *) data{
    [self.webData appendData:data];
}
-(void)connection:(NSURLConnection *) connection didFailWithError:(NSError *) err{
    [self setError:err];
    if (self.targetAction !=nil) {
        self.targetAction(self.actionDelegate,self,nil);
}
}
-(void)connectionDidFinishLoading:(NSURLConnection *) connection{
    NSString *xml = [[NSString alloc] initWithBytes:[self.webData mutableBytes] length:[self.webData length] encoding:NSUTF8StringEncoding];
    [self setError:nil];
    if (self.targetAction !=nil) {
        self.targetAction(self.actionDelegate,self,xml);
}
}

@end
