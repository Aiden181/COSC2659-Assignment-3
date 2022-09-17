//
//  SearchView.swift
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
