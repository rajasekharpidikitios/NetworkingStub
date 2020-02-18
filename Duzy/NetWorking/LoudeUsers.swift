//
//  LoudeUsers.swift
//  TVOSPOC
//
//  Created by Rajshekar on 17/02/20.
//  Copyright © 2020 Rajshekar. All rights reserved.
//

import Foundation

enum UserService {
    case characters
//    case character(identifier: String)
}

extension UserService: Service {
    var parameters: [String : Any]? {
        return ["":""]
    }
    
    var method: ServiceMethod {
        return .get
    }
    
    var baseUrl: String {
       return  Constants().baseUrl
    }
    
    var path: String {
        return Constants.Holder.path
    }
}
