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

// URL Constants
let BASE_URL = "https://awesomechatapp.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"

// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

// Headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]
