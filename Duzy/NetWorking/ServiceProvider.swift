//
//  ServiceProvider.swift
//  TVOSPOC
//
//  Created by Rajshekar on 17/02/20.
//  Copyright © 2020 Rajshekar. All rights reserved.
//

import Foundation

enum Result<T> {
    case success(T)
    case failure(Error)
    case empty
}

class ServiceProvider<T: Service> {
    var urlSession = URLSession.shared
    var reachable = ReachabilityHandler()
    init() {}
    func load(service: T, completion: @escaping (Result<Data>) -> Void) {
        call(service.urlRequest, completion: completion)
    }
    
    fileprivate func jsonToString(_ data: (Data)) {
        do {

            let convertedString = String(data: data, encoding: String.Encoding.utf8) // the data will be converted to the string
            print(convertedString ?? "no data") // <-- here is ur string
            
        } catch let myJSONError {
            print(myJSONError)
        }
    }
    
    func load<U>(service: T, decodeType: U.Type, completion: @escaping (Result<U>) -> Void) where U: Decodable { call(service.urlRequest) { result in
    switch result {
    case .success(let data):
        
      //  self.jsonToString(data)
        
    let decoder = JSONDecoder()
    do {
        let resp = try decoder.decode(decodeType, from: data)
        completion(.success(resp))
        }
    catch {
        completion(.failure(error))
        }
    case .failure(let error):
        completion(.failure(error))
    case .empty:
        completion(.empty)
    }
    }
    }
}

extension ServiceProvider {
    private func call(_ request: URLRequest, deliverQueue: DispatchQueue = DispatchQueue.main, completion: @escaping (Result<Data>) -> Void) {
        
        urlSession.dataTask(with: request) { (data, _, error) in
            if let error = error {
                deliverQueue.async {
                    completion(.failure(error))
                }
            } else if let data = data {
                deliverQueue.async {
                    completion(.success(data))
                }
            } else {
                deliverQueue.async {
                    completion(.empty)
                }
            }
        }.resume()
    }
}
