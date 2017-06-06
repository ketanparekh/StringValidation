//
//  Utils.swift
//  PreSetupLibrary
//
//  Created by Ketan Parekh on 29/03/17.
//  Copyright © 2017 Clarion Technologies. All rights reserved.
//
import Foundation

extension String
{
    func isEmail() -> Bool
    {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: self)
    }
    
    func validationforEmail () -> Bool {
        let emailRegex: String = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        
        if (self.characters.count  > 150 || self.characters.count  == 0 || !emailTest.evaluate(with: self)) {
            return false
        }
        return true
    }
    
    func validationforPhoneNo () -> Bool {
        let validationstmt: String = "[0-9]{3,15}"
        let stmtTest = NSPredicate(format: "SELF MATCHES %@", validationstmt)
        if (!stmtTest.evaluate(with: self)) {
            return false
        }
        return true
    }
    
    func validationforUserName() -> Bool {
        let validationstmt: String = "[a-zA-Z0-9 //$//.//,//!//?//#//@//+//>//<//}//{//)//(//&//^//*//~//`//^//|\\-\\://_//%//'\\]\\[\"\\\\]{3,25}"
        let stmtTest = NSPredicate(format: "SELF MATCHES %@", validationstmt)
        if (!stmtTest.evaluate(with: self)) {
            return false
        }
        return true
    }
    func validationforAlphaNumericValues() -> Bool {
        let validationstmt: String = "[a-zA-Z0-9 ]{1,100}"
        let stmtTest = NSPredicate(format: "SELF MATCHES %@", validationstmt)
        if (!stmtTest.evaluate(with: self)) {
            return false
        }
        return true
    }
    func validationforPasswords() -> Bool {
        let validationstmt: String = "[a-zA-Z0-9 ]{6,100}"
        let stmtTest = NSPredicate(format: "SELF MATCHES %@", validationstmt)
        if (!stmtTest.evaluate(with: self)) {
            return false
        }
        return true
    }
    func validationforNumericValues() -> Bool {
        let validationstmt: String = "[0-9]{1,100}"
        let stmtTest = NSPredicate(format: "SELF MATCHES %@", validationstmt)
        if (!stmtTest.evaluate(with: self)) {
            return false
        }
        return true
    }
    func validationforAlphaNumericZipCode() -> Bool {
        let validationstmt: String = "[a-zA-Z0-9 \\- ]{1,12}"
        let stmtTest = NSPredicate(format: "SELF MATCHES %@", validationstmt)
        if (!stmtTest.evaluate(with: self)) {
            return false
        }
        return true
    }
    
    func validationforZipCode() -> Bool {
        let validationstmt: String = "[0-9]{5}"
        let stmtTest = NSPredicate(format: "SELF MATCHES %@", validationstmt)
        if (!stmtTest.evaluate(with: self)) {
            return false
        }
        return true
    }
    func validationforZip4() -> Bool {
        let validationstmt: String = "[0-9]{4}"
        let stmtTest = NSPredicate(format: "SELF MATCHES %@", validationstmt)
        if (!stmtTest.evaluate(with: self)) {
            return false
        }
        return true
    }
    
    func validationforAlphabeticValues() -> Bool {
        let validationstmt: String = "[a-zA-Z ]{1,100}"
        let stmtTest = NSPredicate(format: "SELF MATCHES %@", validationstmt)
        if (!stmtTest.evaluate(with: self)) {
            return false
        }
        return true
    }
    func validationforQunatity() -> Bool {
        let validationstmt: String = "[0-9]*|[0-9]+\\.[0]"
        let stmtTest = NSPredicate(format: "SELF MATCHES %@", validationstmt)
        if (!stmtTest.evaluate(with: self)) {
            return false
        }
        return true
    }
    
    func validationforPrice() -> Bool {
        let validationstmt: String = "[0-9]*|[0-9]*+\\.+[0-9]{1}?[0-9]*"
        let stmtTest = NSPredicate(format: "SELF MATCHES %@", validationstmt)
        if (!stmtTest.evaluate(with: self)) {
            return false
        }
        return true
    }
    func validationforSKUNumber() -> Bool {
        let validationstmt: String = "[0-9]{1,7}"
        let stmtTest = NSPredicate(format: "SELF MATCHES %@", validationstmt)
        if (!stmtTest.evaluate(with: self)) {
            return false
        }
        return true
    }
    func validationforOrderNotes() -> Bool {
        let validationstmt: String = "[a-zA-Z0-9 //$//.//,//!//?//#//@//+//>//<//}//{//)//(//&//^//*//~//`//^//|\\-\\://_//%//'\\]\\[\"\\\\]{1,2000}"
        let stmtTest = NSPredicate(format: "SELF MATCHES %@", validationstmt)
        if (!stmtTest.evaluate(with: self)) {
            return false
        }
        return true
    }
    func validationforAddressBillingLine1() -> Bool {
        let validationstmt: String = "[a-zA-Z0-9 //$//.//,//!//?//#//@//+//>//<//}//{//)//(//&//^//*//~//`//^//|\\-\\://_//%//'\\]\\[\"\\\\]{1,100}"
        let stmtTest = NSPredicate(format: "SELF MATCHES %@", validationstmt)
        if (!stmtTest.evaluate(with: self)) {
            return false
        }
        return true
    }

    func validationAllowSpecialCharacters() -> Bool {
        let validationstmt: String = "[a-zA-Z0-9 //$//.//,//!//?//#//@//+//>//<//}//{//)//(//&//^//*//~//`//^//|\\-\\://_//%//'\\]\\[\"\\\\]{1,200}"
        let stmtTest = NSPredicate(format: "SELF MATCHES %@", validationstmt)
        if (!stmtTest.evaluate(with: self)) {
            return false
        }
        return true
    }
    func validationforCreditCardNumber( cardName cardtype: String) -> Bool {
        var validationstmt: String = "[0-9]{16}"
        if (cardtype == "American Express") {
            validationstmt = "[0-9]{15}"
        }
        else if (cardtype == "Visa") {
            validationstmt = "[0-9]{16}"
        }
        else if (cardtype == "Master Card") {
            validationstmt = "[0-9]{16}"
        }
        
        let stmtTest = NSPredicate(format: "SELF MATCHES %@", validationstmt)
        if (!stmtTest.evaluate(with: self)) {
            return false
        }
        return true
    }
    func validationforCVVNo(cardName cardtype: String) -> Bool {
        var validationstmt: String = "[0-9]{3}"
        if (cardtype == "American Express") {
            validationstmt = "[0-9]{4}"
        }
        else if (cardtype == "Visa") {
            validationstmt = "[0-9]{3}"
        }
        else if (cardtype == "Master Card") {
            validationstmt = "[0-9]{3}"
        }
        let stmtTest = NSPredicate(format: "SELF MATCHES %@", validationstmt)
        if (!stmtTest.evaluate(with: self)) {
            return false
        }
        return true
    }
}
