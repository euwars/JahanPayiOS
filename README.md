JahanPayiOS
===========

request/verify payments from jahanpay for iOS


*requirements
1. jahanpay api id
2.Xcode 5 or later

set your api price and callback url in viewcontroller.m, price should be in english numbers only. callback url can be app scheme url so it will automatically back to your app.(in sample project it is IranBank://)
other values are optional and can be empty. 
do not try to proccess your payment's in your app because user can not see the payment gateway certificate and verify it's real, by using safari you can let user check and verify all of the security concerns.
i am not resposible for any benefit or damage that you might gain.'

if you think something is wrong, missing ... let me know.
twitter: @euwars

*note
project is not ARC compatible, so if you are using it in your ARC project you should set non-arc flag to your compiler.
