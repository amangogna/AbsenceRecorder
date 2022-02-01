//
//  stateController.swift
//  AbsenceRecorder
//
//  Created by Aman Gogna on 01/02/2022.
//

import Foundation

class stateController: ObservableObject {
    @Published var divisions: [division]
    
    init(){
        divisions = division.example
    }
}
