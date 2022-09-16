//
//  SearchViewModel.swift
//  Magzine
//
//  Created by Duong, Bui Dang Dac on 16/09/2022.
//

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
