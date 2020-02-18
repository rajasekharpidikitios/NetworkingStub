//
//  Constants.swift
//  TVOSPOC
//
//  Created by Rajshekar on 18/02/20.
//  Copyright © 2020 Rajshekar. All rights reserved.
//

import Foundation

struct Constants {
    
 struct Holder {
    static var baseUrl: String = "https://sourcepaneltestadmin.com:8443/"
    static var path: String = "Stipend/getCollegeDetailsForApp/1"
 }
    
 var baseUrl: String {
    get {
            return Holder.baseUrl
        }
 }
}
