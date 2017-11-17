//
//  PatientPresenter.swift
//  Rumah Sakit Binar
//
//  Created by Rio Swarawan on 11/17/17.
//  Copyright © 2017 Rio Swarawan. All rights reserved.
//

import Moya
import ObjectMapper
import Alamofire

class PatientPresenter {
    
    weak private var delegate: PatientDelegate?
    
    func attachView(delegate: PatientDelegate) {
        self.delegate = delegate
    }
    
    func detachView() {
        self.delegate = nil
    }
    
    func getAllPatients() {
        
        if !Reachability.isNetworkAvailable() {
            return
        }
        
        let provider = MoyaProvider<NetworkService>(plugins: [NetworkLoggerPlugin(verbose: true)])
        provider.request(.getPatients()) { (result) in
            switch result {
            case let .success(response):
                let json = String(data: response.data, encoding: String.Encoding(rawValue: String.Encoding.utf8.rawValue))! as String
                let responseModel = Mapper<PatientResponse>().map(JSONString: json)
                
                var patients = [Patient]()
                if let responseModel = responseModel {
                    if responseModel.success! {
                        for data in responseModel.data! {
                            let patient = Patient(id: data.id!, name: data.name!, photo: data.photo!, sick: data.sick!, doctorName: data.doctor!)
                            patients.append(patient)
                        }
                        self.delegate?.displayPatients(patients: patients)
                    }
                }
                
            case let .failure(error):
                print("NetworkModel: request: \(String(describing: error.errorDescription))")
            }
        }
    }
}
