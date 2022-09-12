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
    
    case forYou = "for-you"
    case top = "top"
    case world = "world"
    case politics = "politics"
    case entertainment = "entertainment"
    case general = "general"
    case health = "health"
    case science = "science"
    case sports = "sports"
    case technology = "technology"

    var name: String {
        switch self {
        case .forYou: return "For You"
        case .top: return "Top"
        case .world: return "World"
        case .politics: return "Politics"
        case .entertainment: return "Entertainment"
        case .general: return "General"
        case .health: return "Health"
        case .science: return "Science"
        case .sports: return "Sports"
        case .technology: return "Technology"
      
        }
    }


}
