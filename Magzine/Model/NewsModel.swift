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
    
    var id: Categories?
}



enum Categories: String, Decodable, CaseIterable{
    case general = "general"
    case entertainment = "entertainment"
    case covid = "covid-19"
    case newest = "newest"
    case politics = "politics"
    case sports = "sports"
    case technology = "technology"
    case world = "world"

    var name: String {
        switch self {
        case .general: return "General"
        case .entertainment: return "Entertainment"
        case .covid: return "Covid-19"
        case .newest: return "Newest"
        case .politics: return "Politic"
        case .sports: return "Sport"
        case .technology: return "Technology"
        case .world: return "World"
      
        }
    }


}

