//
//  PatientViewController.swift
//  Rumah Sakit Binar
//
//  Created by Rio Swarawan on 11/17/17.
//  Copyright © 2017 Rio Swarawan. All rights reserved.
//

import UIKit

class PatientViewController: UIViewController {

    @IBOutlet weak var patientTableView: UITableView!
    
    fileprivate var patients = [Patient]()
    fileprivate var presenter = PatientPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        patientTableView.delegate = self
        patientTableView.dataSource = self
        patientTableView.register(UINib.init(nibName: "PatientTableViewCell", bundle: nil), forCellReuseIdentifier: "PatientTableViewCell")
        
        presenter.attachView(delegate: self)
        presenter.getAllPatients()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension PatientViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return patients.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PatientTableViewCell", for: indexPath) as! PatientTableViewCell
        let patient = patients[indexPath.row]
        cell.loadInfo(patient)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
extension PatientViewController : PatientDelegate {
    func displayPatients(patients: [Patient]) {
        self.patients = patients
        self.patientTableView.reloadData()
    }
    
    func onError(message: String) {
        let alertView = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        self.present(alertView, animated: true, completion: nil)
    }
}
