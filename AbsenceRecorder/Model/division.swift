//
//  division.swift
//  AbsenceRecorder
//
//  Created by Aman Gogna on 24/01/2022.
//

import Foundation

class division: Codable{
    let code : String
    var students: [Student] = []
    var absences : [Absence] = []
    
    init(code: String){
        self.code = code
    }
    
    func getAbsence(for date: Date)-> Absence?{
        return absences.first {
            let comparision = Calendar.current.compare($0.takenOn, to: date, toGranularity: .day)
            return comparision == .orderedSame
        }
    }
    
    func createAbsenceOrGetExistingIfAvailable(for date: Date)-> Absence{
        if let existingAbsence = getAbsence(for: date){
            return existingAbsence
        
        }else{
            let absence = Absence(date: date, students: students)
            absences.append(absence)
            
            return absence
        }
    }
    #if DEBUG
    static func createDivison(code:String,of size: Int)-> division{
        let divison = division(code: code)
        
        for i in 1...size{
            let student = Student(firstName: "FirstName\(i)", surname: "Lastname\(i)", birthday: Date())
            divison.students.append(student)
            
        }
        
        return divison
     
    }
    static let example = [division.createDivison(code: "qwe", of: 10),
                          division.createDivison(code: "asd", of: 19),
                          division.createDivison(code: "cvb", of: 14)]
   
                        
    #endif
}
