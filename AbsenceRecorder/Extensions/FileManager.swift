//
//  FileManager.swift
//  AbsenceRecorder
//
//  Created by Aman Gogna on 10/02/2022.
//

import Foundation

extension FileManager{
    private func GetDocumentDirectory()-> URL{
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    func save<T:Codable>(to filePath: String, object: T){
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(object){
            if let json = String(data: encoded, encoding: .utf8){
                let url = GetDocumentDirectory().appendingPathComponent(filePath)
                do{
                    try json.write(to: url,atomically: true,encoding: .utf8)
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
        
    }
}

