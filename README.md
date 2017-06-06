# StringValidation
Swift 3 - String Extension With various String Validation  


**Usage of String Extension With various String Validation :**

Step 1 : Add 'String+Validation.swift' file in your Application. 

Step 2 : 
Use method direct with your sting variable

**Valid Email Address**

```swift
    let strEmail : String = "ketanparekh.ce@gmail.com"
    if(strEmail.validationforEmail()) {
        print("Valid Email Address")
    }
```

**Valid Phone Number**

Validation Minimum 3 Number Maximum 15 Number 

```swift
    let strPhone : String = "12"
    let strPhone1 : String = "1234567890"
    if(!strPhone.validationforPhoneNo()) {
        print("InValid Phone")
    }
    if(strPhone1.validationforPhoneNo()) {
        print("Valid Phone")
    }
```
**Valid User Name**

Validation for Minimum 5 Character Maximum 25 Character 

```swift
    let strUserName : String = "ab"
    let strUserName1 : String = "ketanparekh"
    if(!strUserName.validationforUserName()) {
        print("InValid UserName")
    }
    if(strUserName1.validationforUserName()) {
        print("Valid UserName")
    }
```
**Valid Only Alpha Numeric Value**

Validation for Minimum 1 Character Maximum 100 Alpha numeric Value. It will not allow special Charater in string. 


```swift
    let stralphaNumeric : String = "abcd12/*+*---+312"
    let stralphaNumeric1 : String = "abcd12312"
    if(!stralphaNumeric.validationforAlphaNumericValues()) {
        print("InValid Alpha Numeric")
    }
    if(stralphaNumeric1.validationforAlphaNumericValues()) {
        print("Valid Aplphanumeric")
    }
```
**Valid Password Length**

Validation for Password Minimum 6 Character Maximum 100 Alpha numeric Value. It will not allow special Charater in string. 

```swift
    let strPassword : String = "ABC1"
    let strPassword1 : String = "ABC1231"
    if(!strPassword.validationforPasswords()) {
        print("InValid Password")
    }
    if(strPassword1.validationforPasswords()) {
        print("Valid Password")
    }
```
**Valid Only Numeric Value**

Validation for only numeric value Minimum 1 Character Maximum 100 numeric Value.

```swift 
    let strNumericOnly : String = "ABC1"
    let strNumericOnly1 : String = "123456"
    if(!strNumericOnly.validationforNumericValues()) {
        print("InValid Numeric Only")
    }
    if(strNumericOnly1.validationforNumericValues()) {
        print("Valid Numeric")
    }
```
**Valid Alpha Numeric Zipcode**

Validation for Alpha numeric Zipcode value Minimum 1 Character Maximum 12 numeric Value. It will not allow special Charater in string.

```swift 
    let stralphaNumericZipcode : String = "38005AB@#$"
    let stralphaNumericZipcode1 : String = "38005AB"
    if(!stralphaNumericZipcode.validationforAlphaNumericZipCode()) {
        print("InValid Alpha Numeric Zipcode")
    }
    if(stralphaNumericZipcode1.validationforAlphaNumericZipCode()) {
        print("Valid Aplpha numeric Zipcode")
    }
```
**Valid Numeric Only Zipcode with fix length**

Validation for numeric only Zipcode with fix length of 5 and 4 Numeric. 

```swift 
    let strZipcode : String = "380"
    let strZipcode1 : String = "38004"
    if(!strZipcode.validationforZipCode()) {
        print("InValid Zipcode")
    }
    if(strZipcode1.validationforZipCode()) {
        print("Valid Zipcode")
    }

    let strZipcode2 : String = "3800"
    if(!strZipcode.validationforZip4()) {
        print("InValid Zipcode with 4 Number")
    }
    if(strZipcode2.validationforZip4()) {
        print("Valid Zipcode with 4 Number")
    }
```
**Valid Only Alphabetic**

Validation for Only Alphabetic value. Minimum 1 Character Maximum 100 Alphabetic. 

```swift 
    let strAlphabetic : String = "380"
    let strAlphabetic1 : String = "abcABC"
    if(!strAlphabetic.validationforAlphabeticValues()) {
        print("InValid Alphabetic")
    }
    if(strAlphabetic1.validationforAlphabeticValues()) {
        print("Valid Alphabetic")
    }
```        
**Valid Qunatity**

Validation for Qunatity. It will allow in value like 3.0, 3 , 30, 31.0 it will not allow numbers like 32.2, 3.2, e.g 

```swift         
    let strQuanity : String = "3.8"
    let strQuanity1 : String = "3.0"
    if(!strQuanity.validationforQunatity()) {
        print("InValid Quantity")
    }
    if(strQuanity1.validationforQunatity()) {
        print("Valid Quantity")
    }
```
**Valid Price**

Validation for Price Value. It will allow only Numeric Value with and withour decimal numbers like 33.4,33.0,33 etc..

```swift  
    let strPrice : String = "23a.33a"
    let strPrice1 : String = "37.30"
    if(!strPrice.validationforPrice()) {
        print("InValid Price")
    }
    if(strPrice1.validationforPrice()) {
        print("Valid Price")
    }
```
**Valid SKU Number**

Validation for SKU Number.

```swift  
    let strSKU : String = "123456789"
    let strSKU1 : String = "1234567"
    if(!strSKU.validationforSKUNumber()) {
        print("InValid SKU")
    }
    if(strSKU1.validationforSKUNumber()) {
        print("Valid SKU")
    }
```
**Valid OrderNotes**

Validation for Order Notes. This is notes It will allow Upto 2000 char includes alpha numeric value

```swift  
    let strOrderNotes : String = "This is notes It will allow Upto 2000 char includes alpha numeric value"
    if(strOrderNotes.validationforOrderNotes()) {
        print("Valid Order Notes")
    }
```
**Valid OrderNotes**

Validation for Order Notes. This is notes It will allow Upto 2000 char includes alpha numeric value

```swift  
    let strOrderNotes : String = "This is notes It will allow Upto 2000 char includes alpha numeric value"
    if(strOrderNotes.validationforOrderNotes()) {
        print("Valid Order Notes")
    }
```
**Valid Credit Card Number**

Validation for Credit Card Number. Validate Number as per Card Name "American Express" = 15 Digit Card Number, "Visa" & "Master Card" = 16 Digit Card Number. 

```swift  
        let strCreditCard : String = "1234567812345"
        let strCreditCard1 : String = "1234567123456789"
        if(!strCreditCard.validationforCreditCardNumber(cardName: "Visa")) {
            print("InValid Credit Card")
        }
        if(strCreditCard1.validationforCreditCardNumber(cardName: "Visa")) {
            print("Valid Credit Card")
        }
```
**Valid CVV Number**

Validation for CVV Number. Validate Number as per Card Name "American Express" = 4 Digit CVV Number, "Visa" & "Master Card" = 3 Digit CVV Number. 

```swift  
    let strCVV : String = "444"
    let strCVV1 : String = "4441"
    if(!strCVV.validationforCVVNo(cardName: "American Express")) {
        print("InValid CVV")
    }
    if(strCVV1.validationforCVVNo(cardName: "American Express")) {
        print("Valid CVV")
    }
```
        
