//
//  URLSessionProtocol.swift
//  DogYears
//
//  Created by alien on 2019/6/15.
//  Copyright © 2019 Razeware. All rights reserved.
//

import Foundation

protocol URLSessionProtocol {
    func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTaskProtocol
}

extension URLSession: URLSessionProtocol {
    
    func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTaskProtocol {
        
        let task = dataTask(with: request, completionHandler: completionHandler) as URLSessionDataTask
        return task as URLSessionDataTaskProtocol
    }
}
