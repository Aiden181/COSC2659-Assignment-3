//
//  ListCardView.swift
//  Magzine
//
//  Created by Aiden Ly on 08/09/2022.
//

import SwiftUI

struct ListCardView: View {
    var body: some View {
        ZStack {
        Color("White")
            VStack{
                Spacer()
                
                Image("news24")
                ListCategoryView()
                    NavigationView{
                        List(0..<10) { item in
                            NavigationLink{
                                ArticleView()
                            } label: {
                                CardView()
                                    .frame( maxWidth: .infinity)
                            }
                        }
                        .onAppear(perform: {
                                UITableView.appearance().contentInset.top = -15
                            })
//                        .offset(y: 110)
                        .edgesIgnoringSafeArea(.top)
                        .listStyle(GroupedListStyle())
                        .edgesIgnoringSafeArea(.bottom)
                        .navigationBarHidden(true)
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
