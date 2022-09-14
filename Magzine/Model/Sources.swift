//
//  Sources.swift
//  Magzine
//
//  Created by Duong, Bui Dang Dac on 14/09/2022.
//

import Foundation

struct Source: Codable,Hashable {
    let id: String
    let title: String
    let imgSrc: URL
    let directUrl: URL
    let category: String
    let content: String?
    
    
    
}
