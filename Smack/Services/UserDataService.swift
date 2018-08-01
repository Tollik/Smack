//
//  UserDataService.swift
//  Smack
//
//  Created by Tolik Ivanov on 31.07.2018.
//  Copyright © 2018 Tolik Ivanov. All rights reserved.
//

import Foundation

class UserDataService {
    static let instance = UserDataService()
    // creating a public getter so other classes can read it
    // but private setter, so no one can write to it, look but don't touch..
    public private(set) var id = ""
    public private(set) var avatarColor = ""
    public private(set) var avatarName = ""
    public private(set) var email = ""
    public private(set) var name = ""
    
    func setUserData(id: String, color: String, avatarName: String, email: String, name: String) {
        self.id = id
        self.avatarColor = color
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }
    
    func setAvatarName(avatarName: String) {
        self.avatarName = avatarName
    }
    
    func returnUIColor(components: String) -> UIColor{
//"[0.184313725490196, 0.870588235294118, 0.627450980392157, 1]"
        let scanner = Scanner(string: components) //scanner creation
        let skipped = CharacterSet(charactersIn: "[], ") // chars to be skipped
        let comma = CharacterSet(charactersIn: ",") // char to tell the scanner where to stop scan
        scanner.charactersToBeSkipped = skipped // actually tell the scanner what should be skipped
        // grabbing an optional string
        var r, g, b, a : NSString?
        // telling scanner to scan through objects , stop scan at comma and save the value to the variables
        scanner.scanUpToCharacters(from: comma, into: &r)
        scanner.scanUpToCharacters(from: comma, into: &g)
        scanner.scanUpToCharacters(from: comma, into: &b)
        scanner.scanUpToCharacters(from: comma, into: &a)
        // default color incase we fail the unwrpping
        let defaultColor = UIColor.lightGray
        //unwrapping optional strings
        guard let rUnwrapped = r else {return defaultColor }
        guard let gUnwrapped = g else {return defaultColor }
        guard let bUnwrapped = b else {return defaultColor }
        guard let aUnwrapped = a else {return defaultColor }
        // converting strings to doubles, because there's no other way to convert string to cgfloat
        let rfloat = CGFloat(rUnwrapped.doubleValue)
        let gfloat = CGFloat(gUnwrapped.doubleValue)
        let bfloat = CGFloat(bUnwrapped.doubleValue)
        let afloat = CGFloat(aUnwrapped.doubleValue)
        // generating a new color with cgfloats that we got from the strings
        let newUIColor = UIColor(red: rfloat, green: gfloat, blue: bfloat, alpha: afloat)
        // return a new color
        return newUIColor
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
