//
//  ArticleItem.swift
//  Magzine
//
//  Created by Minh Nguyen Tuan on 15/09/2022.
//

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

