//
//  NetworkService.swift
//  Rumah Sakit Binar
//
//  Created by Rio Swarawan on 11/17/17.
//  Copyright © 2017 Rio Swarawan. All rights reserved.
//

import UIKit
import Moya

enum NetworkService {
    case getPatients()
}

extension NetworkService: TargetType {
    var baseURL: URL {
        return URL(string: "http://private-9dc23-binarhospital.apiary-mock.com")!
    }
    
    var path: String {
        switch self {
        case .getPatients:
            return "/api/patients"
        }
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var parameterEncoding: Moya.ParameterEncoding {
        return URLEncoding.default
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        return .requestPlain
    }
    
    var headers: [String : String]? {
        return ["Content-Type" : "application/json"]
    }
}
