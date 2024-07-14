//
//  placeList.swift
//  OSU Guide Book
//
//  Created by Adil Aman Mohammed on 7/14/24.
//

import Foundation

struct place : Identifiable, Decodable {
    
    let id = UUID()
    var name : String
    var shortDescription : String
    var longDescription : String
    var imageName : String
    var latLogDetails : String
    
}
