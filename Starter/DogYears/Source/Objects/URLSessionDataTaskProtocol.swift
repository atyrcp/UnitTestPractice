//
//  URLSessionDataTaskProtocol.swift
//  DogYears
//
//  Created by alien on 2019/6/15.
//  Copyright © 2019 Razeware. All rights reserved.
//

import Foundation

protocol URLSessionDataTaskProtocol {
    func resume()
}

extension URLSessionDataTask: URLSessionDataTaskProtocol {
    
}
