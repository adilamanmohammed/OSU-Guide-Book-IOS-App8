//
//  Campus.swift
//  OSU Guide Book
//
//  Created by Adil Aman Mohammed on 7/14/24.
//

import Foundation

struct Campus :Identifiable, Decodable {
    let id = UUID()
    var name : String
    var summary : String
    var imageName : String
    var placename : [place]
}
