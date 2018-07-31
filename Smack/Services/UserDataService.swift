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
        self.avatarColor = avatarName
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }
    
    func setAvatarName(avatarName: String) {
        self.avatarName = avatarName
    }
    
}
