//
//  DataManager.swift
//  HurreyChallenge
//
//  Created by Deltrin Sam on 19/04/22.
//

import UIKit

struct ClassModel: Decodable {
    var school_name: String?
    var school_id: String?
    var school_email: String?
    var school_mobile: String?
    var classes: [ClassData]
    
}

struct ClassData: Decodable {
    var name: String
    var section: String
    var students: [StudentsData]

}

struct StudentsData: Decodable {
    var name: String?
    var email: String?
    var mobile: String?
    var latitude: String?
    var longitude: String?
}

/*

{
school_name: String
school_id: String
school_email: String
school_mobile: String
classes: [5 items]
 
 name: String
 section: String
 students: [
 {
 "name": "Student 1",
 "email": "student1@hurreytech.com",
 "mobile": "+91888765423",
 "latitude": "12.120000",
 "longitude": "76.680000"
 },
}
 

*/
