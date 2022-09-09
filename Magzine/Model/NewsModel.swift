//
//  NewsModel.swift
//  Magzine
//
//  Created by Duong, Bui Dang Dac on 09/09/2022.
//

import Foundation

struct NewsDataModel: Decodable{
    var status: String?
    var totalResults: Int?
    var articles: [NewsModel]?
}

struct NewsModel: Decodable{
    
//    var id: Sources?
}



//enum Sources: String, Decodable, CaseIterable{
//
//
//}
