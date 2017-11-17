//
//  UIImageView+Extensions.swift
//  Rumah Sakit Binar
//
//  Created by Rio Swarawan on 11/17/17.
//  Copyright © 2017 Rio Swarawan. All rights reserved.
//

import UIKit

extension UIImageView {
    
    func loadFromUrl(url: String) {
        let url = URL(string: url)
        let data = try? Data(contentsOf: url!)
        
        if let imageData = data {
            let image = UIImage(data: imageData)
            self.image = image
        }
    }
    
}
