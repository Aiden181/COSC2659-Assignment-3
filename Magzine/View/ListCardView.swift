//
//  ListCardView.swift
//  Magzine
//
//  Created by Aiden Ly on 08/09/2022.
//

import SwiftUI

struct ListCardView: View {
    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
        ZStack {
        Color("White")
            VStack{
                Spacer()
                
                Image("news24")
                ListCategoryView(selection: $viewModel.selection)
                    NavigationView{
                        List(0..<10) { item in
                            NavigationLink{
                                ArticleView()
                            } label: {
                                CardView()
                                    .frame( maxWidth: .infinity)
                                    .offset(y:-12) //dont touch the offset plz (Duong)
                            }
                        }
                        .onAppear(perform: {
                                UITableView.appearance().contentInset.top = -15
                            })
//                        .offset(y: 110)
                        .edgesIgnoringSafeArea(.top)
                        .listStyle(GroupedListStyle())
                        .edgesIgnoringSafeArea(.bottom)
                    }
                
            } // VStack
        } // ZStack

            
        
        
        
     
            
        }
    }


struct ListCardView_Previews: PreviewProvider {
    static var previews: some View {
        ListCardView()
    }
}
