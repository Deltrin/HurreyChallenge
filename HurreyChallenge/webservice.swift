//
//  webservice.swift
//  HurreyChallenge
//
//  Created by Deltrin Sam on 19/04/22.
//

import Foundation

class Webservice {

    func getClassData(url: URL, completion: @escaping ([ClassData]?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                
                let classListData = try? JSONDecoder().decode(ClassModel.self, from: data)
                
                if let classList = classListData {
                    completion(classList.classes)
                }
            }
        }.resume()
    }
}

