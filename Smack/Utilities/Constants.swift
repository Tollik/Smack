//
//  Constants.swift
//  Smack
//
//  Created by Tolik Ivanov on 19.07.2018.
//  Copyright © 2018 Tolik Ivanov. All rights reserved.
//
// @ This file contains all the constants

import Foundation

// completion handler to handle the http response
// typealias is simple a renaming a type
/*
 For example :
 typealias Jonny = String
 let name: Jonny = "Jpnny"
 basically, we just remapped a type String to a new type Jonny, which is remain the String but with different name...
 */
typealias CompletionHandler = (_ Success: Bool) -> ()

// Colors
let SMACK_PURPLE_PLACE_HOLDER = #colorLiteral(red: 0.3266413212, green: 0.4215201139, blue: 0.7752227187, alpha: 0.5)

// NOtification Constants
let NOTIF_USER_DATA_DID_CHANGE = Notification.Name("notifUserDataChanged")

// URL Constants
let BASE_URL = "https://awesomechatapp.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"

// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"
let TO_AVATAR_PICKER = "toAvatarPicker"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

// Headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]
