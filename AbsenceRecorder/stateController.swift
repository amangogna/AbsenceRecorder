//
//  stateController.swift
//  AbsenceRecorder
//
//  Created by Aman Gogna on 01/02/2022.
//

import Foundation

class stateController: ObservableObject {
    @Published var divisions: [division] = []
    
    init(){
        divisions = division.example
        //LoadFromFile()
    }
    
    func LoadFromFile(){
        // get url from file you want to load from
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let userPath = paths[0]
        let url = userPath.appendingPathComponent("Divisions.json")
        if let data = try? Data(contentsOf: url){
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode([division].self,from: data){
                divisions = loaded
            }
            
            
        }

        
    }
    func SaveToFile(){
        
        FileManager.default.save(to: "divisions.json", object: divisions)
    }

}
