//
//  SearchView.swift
//  Magzine
//
//  Created by Aiden Ly on 10/09/2022.
//

import SwiftUI
import UIKit

struct SearchView: View {
    @ObservedObject var viewModel = SearchForArticlesViewModel()

    var body: some View {
        VStack{
            NavigationView(content:{
                    SearchBar(text: $viewModel.searchText)
            
                .navigationBarTitle("Search Articles")
            })

        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
