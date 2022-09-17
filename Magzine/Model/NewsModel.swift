//
//  NewsModel.swift
//  Magzine
//
/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 3
  Author(s): Bui Dang Dac Duong (s3753278)
             Nguyen Tuan Minh (s3878566)
             Nguyen Duc Minh (s3877477)
             Khoi Viet Ly (s3753278)
             Tran Thien Van (s3740845)
 
  Created  date: 09/09/2022
  Last modified: 16/09/2022
  Acknowledgement: Acknowledge the resources that you use here.
*/
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

