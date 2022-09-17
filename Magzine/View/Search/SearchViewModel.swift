//
//  SearchViewModel.swift
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
 
  Created  date: 16/09/2022
  Last modified: 16/09/2022
  Acknowledgement: Acknowledge the resources that you use here.
*/


import Foundation
import SwiftUI
import Combine

final class SearchForArticlesViewModel: ObservableObject {
    
    private var bag = Set<AnyCancellable>()
    
    @Published var searchText: String = "" {
        didSet {
            SearchView()
        }
    }
}
