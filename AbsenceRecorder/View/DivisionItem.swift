//
//  DivisionItem.swift
//  AbsenceRecorder
//
//  Created by Aman Gogna on 26/01/2022.
//

import SwiftUI

struct DivisionItem: View {
    let division: division
    var body: some View {
        HStack{
            Image(systemName: "\(division.students.count).circle")
            Text("\(division.code)")
        }
    }
}

struct DivisionItem_Previews: PreviewProvider {
    static var previews: some View {
        DivisionItem(division: division(code: "cs-1"))
    }
}
