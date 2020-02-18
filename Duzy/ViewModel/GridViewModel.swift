//
//  GridViewModel.swift
//  TVOSPOC
//
//  Created by Rajshekar on 18/02/20.
//  Copyright © 2020 Rajshekar. All rights reserved.
//

import Foundation
import UIKit

class GridViewModel {
    var provider:ServiceProvider<UserService>
    var reachable = ReachabilityHandler()
    var userList: UserList?

    init(provider: ServiceProvider<UserService>) {
        self.provider = provider
        reachable.reachableExposeDelegate = self
    }
    var isReachable: Bool?
    var view: UIView?
}

extension GridViewModel {
    private func callUserList() {
        provider.load(service: .characters, decodeType: UserList.self) { result in
            switch result {
            case .success(let resp):
                self.userList = resp
            case .failure(let error):
                print(error.localizedDescription)
                self.view?.showToast(message: error.localizedDescription, font:  UIFont(name: "GillSans-SemiBold", size: 16) ?? UIFont.systemFont(ofSize: 9))
            case .empty:
                print("No Data")
                self.view?.showToast(message: "No Data", font:  UIFont(name: "GillSans-SemiBold", size: 16) ?? UIFont.systemFont(ofSize: 9))
            }
        }
    }
}

extension GridViewModel: ReachableExpose {
    
    func callApi(view: UIView) {
       self.view = view
        if isReachable ?? true {
            callUserList()
        } else {
            view.showToast(message: "raja", font:  UIFont(name: "GillSans-SemiBold", size: 16) ?? UIFont.systemFont(ofSize: 9))
        }
        
        
    }
    
    func reachabilityChanged(_ isReachable: Bool) {
        if isReachable {
           // print("Internet connection available...")
            self.isReachable = isReachable
            
        } else {
             self.isReachable = isReachable
           // print("No internet connection")
        }
    }
}
