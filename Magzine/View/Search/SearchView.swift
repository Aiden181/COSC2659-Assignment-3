//
//  SearchView.swift
//  Magzine
//
/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 3
  Author: Your name (e.g. Nguyen Van Minh)
  ID: Your student id (e.g. 1234567)
  Created  date: dd/mm/yyyy (e.g. 31/07/2022)
  Last modified: dd/mm/yyyy (e.g. 05/08/2022)
  Acknowledgement: Acknowledge the resources that you use here.
*/
//

import SwiftUI
import UIKit

struct SearchView: View {
    @ObservedObject var viewModel = SearchForArticlesViewModel()

    var body: some View {
//        ZStack{
//            Color("White")
//            VStack{
                NavigationView{
                    VStack(alignment: .leading){
                        Text("Search Articles")
                            .offset(x: 20)
                            .modifier(TabviewTitle())
                        List{
                            SearchBar(text: $viewModel.searchText)

                        }
                        .onAppear(perform: {
                                UITableView.appearance().contentInset.top = 10
                            })
                        .listStyle(InsetListStyle())
                        .navigationBarHidden(true)

                    }
                }
//            }
//        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
