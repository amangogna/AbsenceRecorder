//
//  student.swift
//  AbsenceRecorder
//
//  Created by Aman Gogna on 24/01/2022.
//

import Foundation

class student{
    let firstName: String
    let surname: String
    let birthday : Date
    
    init(firstName : String,surname: String,birthday : Date) {
        self.firstName = firstName
        self.surname = surname
        self.birthday = birthday
    }
}
