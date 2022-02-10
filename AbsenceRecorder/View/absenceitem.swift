//
//  absenceitem.swift
//  AbsenceRecorder
//
//  Created by Aman Gogna on 04/02/2022.
//

import SwiftUI

struct absenceitem: View {
  
    @ObservedObject var studentAbsence : StudentAbsence
    
    var body: some View {
        HStack{
            Text("\(studentAbsence.student.firstName)")
            Spacer()
            if studentAbsence.isAbsent == true{
                Button("❌",action: {toggleAbsent()})
            }else{
                Button("✅",action: {toggleAbsent()})
            }
            
        }
    }
    func toggleAbsent(){
        studentAbsence.isAbsent.toggle()
    }
}

struct absenceitem_Previews: PreviewProvider {
    static var previews: some View {
        absenceitem(studentAbsence: StudentAbsence.example)
    }
}
