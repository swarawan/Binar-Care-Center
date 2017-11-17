//
//  PatientDelegate.swift
//  Rumah Sakit Binar
//
//  Created by Rio Swarawan on 11/17/17.
//  Copyright © 2017 Rio Swarawan. All rights reserved.
//

import Foundation

protocol PatientDelegate : NSObjectProtocol {
    
    func displayPatients(patients: [Patient])
    
    func onError(message: String)
}
