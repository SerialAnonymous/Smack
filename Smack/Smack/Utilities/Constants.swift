//
//  Constants.swift
//  Smack
//
//  Created by Nayan Jariwala on 30/03/18.
//  Copyright © 2018 Ghost. All rights reserved.
//

import Foundation

typealias completionHandler = (_ Success:Bool) -> ()

//URL Constants

let BASE_URL = "https://smackappnj.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/resgister"

// Segue
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

// User Default

let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggenIn"
let USER_EMAIL = "userEmail"
