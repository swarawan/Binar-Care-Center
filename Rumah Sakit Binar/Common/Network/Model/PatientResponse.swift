//
//  PatientResponse.swift
//  Rumah Sakit Binar
//
//  Created by Rio Swarawan on 11/17/17.
//  Copyright © 2017 Rio Swarawan. All rights reserved.
//

import Foundation
import ObjectMapper

struct PatientResponse : Mappable {
    var success: Bool?
    var message: String?
    var data: [Data]?
    
    init() {
    }
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        self.success <- map["success"]
        self.message <- map["message"]
        self.data <- map["data"]
    }
    
    struct Data : Mappable {
        var id: Int?
        var name: String?
        var photo: String?
        var sick: String?
        var doctor: String?
        
        init() {
        }
        
        init?(map: Map) {
        }
        
        mutating func mapping(map: Map) {
            self.id     <- map["id"]
            self.name   <- map["name"]
            self.photo  <- map["photo"]
            self.sick   <- map["sick"]
            self.doctor <- map["doctor"]
        }
    }
}
