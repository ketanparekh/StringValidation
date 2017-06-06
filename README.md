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
