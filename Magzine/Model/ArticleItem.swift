//
//  ArticleItem.swift
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
 
  Created  date: 15/09/2022
  Last modified: 17/09/2022
  Acknowledgement: Acknowledge the resources that you use here.
*/

import Foundation

struct ArticleItem: Codable,Hashable {
    let id: Int
    let title: String
    let imgSrc: String
    let directUrl: String
    let category: String
    let content: String
    let time: String
}

