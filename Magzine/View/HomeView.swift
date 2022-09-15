//
//  ListCardView.swift
//  Magzine
//
//  Created by Aiden Ly on 08/09/2022.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
        ZStack {
        Color("White")
            VStack{
                Spacer()
                    NavigationView{
                        VStack{
                            HStack{
                                Image("Magzine")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 80)
                                Image(systemName: "newspaper")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30)
                            }
                                VStack{
                                    ListCategoryView(selection: $viewModel.selection)
                                }
                                
                            List(0..<10) { item in
                                NavigationLink{
                                    ArticleView()
                                } label: {
                                    CardView()
                                        .frame( maxWidth: .infinity)
                                        .offset(y:-11) //dont touch the offset plz (Duong)
                                }
                            }
                            .padding(.bottom, 10)
                            .onAppear(perform: {
                                    UITableView.appearance().contentInset.top = -80
                                })
//                            .offset(y: )
                            .edgesIgnoringSafeArea(.top)
                            .listStyle(GroupedListStyle())
                            .edgesIgnoringSafeArea(.bottom)
                            .navigationBarHidden(true)
                        }


                    }
                
            } // VStack
        } // ZStack

            

        }

    
    
    }


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
