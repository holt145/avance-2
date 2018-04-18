//
//  Rate.swift
//  act10.1
//
//  Created by Alumno IDS on 14/03/18.
//  Copyright © 2018 Alumno IDS. All rights reserved.
//

import UIkit

class Rates {
    var name: String
    var photo: UIImage?
    var note: String
    var resume: String
    var date: UIDatePicker?
    
    init?(name: String, photo: UIImage?, note: Int, resume: String) {
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.note = note
        self.resume = resume
        
    }

}
