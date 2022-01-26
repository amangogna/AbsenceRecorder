//
//  division.swift
//  AbsenceRecorder
//
//  Created by Aman Gogna on 24/01/2022.
//

import Foundation

class division{
    let code : String
    var students: [student] = []
    
    init(code: String){
        self.code = code
    }
    #if DEBUG
    static func createDivison(code:String,of size: Int)-> division{
        let divison = division(code: code)
        
        for i in 1...size{
            let student = student(firstName: "FirstName\(i)", surname: "Lastname\(i)", birthday: Date())
            divison.students.append(student)
            
        }
        
        return divison
     
    }
    static let example = [division.createDivison(code: "qwe", of: 1),
                          division.createDivison(code: "asd", of: 2),
                          division.createDivison(code: "cvb", of: 9)]
   
                        
    #endif
}
