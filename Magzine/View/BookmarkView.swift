//
//  BookmarkView.swift
//  Magzine
//
//  Created by Aiden Ly on 10/09/2022.
//

import SwiftUI

struct BookmarkView: View {
    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
//        ZStack{
//            Color("White")
//            VStack{
                NavigationView{
                    VStack{
                        VStack{
                            //ListCategoryView(selection: $viewModel.selection)
                        }


                        List(0..<10) { item in
                            NavigationLink{
                               // ArticleView()
                            } label: {
                                CardView()
                                    .frame( maxWidth: .infinity)
                                    .offset(y:-11) //dont touch the offset plz (Duong)
                            }
                        }
                        .onAppear(perform: {
                                UITableView.appearance().contentInset.top = -40
                            })
                        .edgesIgnoringSafeArea(.top)
                        .listStyle(GroupedListStyle())
                        .edgesIgnoringSafeArea(.bottom)
                        .navigationBarTitle("Bookmarked")

//                        .navigationBarHidden(true)

                    }

                    
                }
//            }
//        }
        
        
    }
}

struct BookmarkView_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkView()
    }
}

