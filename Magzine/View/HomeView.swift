//
//  ListCardView.swift
//  Magzine
//
//  Created by Aiden Ly on 08/09/2022.
//
import Foundation
import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    @StateObject  private var cardViewModel = ViewModel()
    @State private var index = 0
    @State private var apiURL = "https://final-ios.herokuapp.com/articles"
    @State private var isChanged = false
   // @State private var articleM:[ArticleItem] = []
   /// @State private var indexM:Int
    var body: some View {
        ZStack {
        Color("White")
        VStack{
            Spacer()
            NavigationView{
            VStack{
                HStack{
                    Image("news24")
                    Button(action:{viewModel.openNotification = true}){
                    Image(systemName: "bell")
                        .foregroundColor(.black)
                    }
                }
                VStack{
                    ListCategoryView(selection: $viewModel.selection,articles: $cardViewModel.articles,apiURL: apiURL,isChanged: $isChanged)

                }
                                
                List{
                    var _ = print (cardViewModel.articles)
                    ForEach(cardViewModel.articles, id: \.self){
                    article in
                        NavigationLink{
                            ArticleView(article: article)
                        } label: {
                            HStack(alignment: .top){
                                URLImage(urlString: article.imgSrc)
                                VStack(alignment: .leading, spacing: 15){
                                    Text(article.title).modifier(CardTitleText())
                                    HStack{
                                        HStack(spacing: 15){
                                            Text(article.category)
                                                .modifier(CardCategoryText())
                                            Image(systemName: "circle.fill")
                                                .resizable()
                                                .modifier(TimeDot())
                                            Text(article.time)
                                                .modifier(CardAuthorText())
                                        }
                                        Spacer()
                                        Button{
                                            //
                                        } label: {
                                            Image(systemName: "ellipsis")
                                                .foregroundColor(.black)
                                        }
                                    }
                                } //VStack
                            } //HStack #1
                        }
//                        onChange(of: isChanged, perform: {newValue in
//
//
//                        })
                            .padding(.bottom, 30)
                            .padding(.top, 20)
                            .edgesIgnoringSafeArea(.top)
                                .frame( maxWidth: .infinity)
                                .offset(y:-11) //dont touch the offset plz (Duong)
                        }
                    }.onAppear(){
                        UITableView.appearance().contentInset.top = -40
                        cardViewModel.parseJSON(string: apiURL)
                    }
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


//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}

