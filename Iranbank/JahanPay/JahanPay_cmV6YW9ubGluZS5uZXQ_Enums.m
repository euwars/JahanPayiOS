#import "JahanPay_cmV6YW9ubGluZS5uZXQ_Enums.h"

@implementation  JahanPay_cmV6YW9ubGluZS5uZXQ_Enums
+(SoapProtocolVersion)StringToSoapProtocolVersion:(NSString*)str{
    if( NSOrderedSame == [str compare:@"Default" options:NSCaseInsensitiveSearch])
        return kSoapProtocolVersionDefault;
    if( NSOrderedSame == [str compare:@"Soap11" options:NSCaseInsensitiveSearch])
        return kSoapProtocolVersionSoap11;
    if( NSOrderedSame == [str compare:@"Soap12" options:NSCaseInsensitiveSearch])
        return kSoapProtocolVersionSoap12;
    return -1;
}
+(NSString*)SoapProtocolVersionToString:(SoapProtocolVersion)soapVersion;{
    switch (soapVersion){
        case kSoapProtocolVersionDefault:
            return @"Default";
        case kSoapProtocolVersionSoap11:
            return @"Soap11";
        case kSoapProtocolVersionSoap12:
            return @"Soap12";
        default:
            return @"";
    }
}
@end
