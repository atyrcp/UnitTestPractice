//
//  MockSession.swift
//  DogYearsTests
//
//  Created by alien on 2019/6/15.
//  Copyright © 2019 Razeware. All rights reserved.
//

import Foundation

class MockSession: URLSessionProtocol {
    
    func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTaskProtocol {
        completionHandler(Data(), nil, nil)
        return MockURLSessionDataTask()
    }
}

