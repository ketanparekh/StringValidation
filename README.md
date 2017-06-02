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
    let strPhone1 : String = "12"
    let strPhone : String = "1234567890"
    if(!strPhone1.validationforPhoneNo()) {
        print("InValid Phone")
    }
    if(strPhone.validationforPhoneNo()) {
        print("Valid Phone")
    }
```
