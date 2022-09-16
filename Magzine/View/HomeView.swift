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
                    ListCategoryView(selection: $viewModel.selection,articles: $cardViewModel.articles,apiURL: apiURL,isChanged: $isChanged)

                }
                                
                List{
                    var _ = print (cardViewModel.articles)
                    ForEach(cardViewModel.articles, id: \.self){
                    article in
                        NavigationLink{
                            ArticleView(article: article)
                        } label: {
                            HStack{
                                URLImage(urlString: article.imgSrc)
                                    .padding(.bottom)
                                VStack(alignment: .leading, spacing: 15){
                                    Text(article.title).modifier(CardTitleText())
                                    HStack{
                                        HStack(spacing: 8){
                                            Text(article.category)
                                                .modifier(CardCategoryText())
                                            Spacer()
                                            Image(systemName: "circle.fill")
                                                .resizable()
                                                .modifier(TimeDot())
                                            Text(article.time)
                                                .modifier(CardAuthorText())
                                        }
                                        Spacer()


                                    }
                                } //VStack
                            } //HStack #1
                        }
//                        onChange(of: isChanged, perform: {newValue in
//
//
//                        })
                            .padding(.bottom, 10)
                            .padding(.top, 10)
                            .edgesIgnoringSafeArea(.top)
                                .frame( maxWidth: .infinity)
//                                .offset(y:-30)
                        }
                    }.onAppear(){
                        cardViewModel.parseJSON(string: apiURL)
                        UITableView.appearance().contentInset.bottom = 80

                    }
//                            .offset(y: 100)
                    .edgesIgnoringSafeArea(.top)
                    .listStyle(InsetListStyle())
                    .edgesIgnoringSafeArea(.bottom)
                    .navigationBarHidden(true)
                        }


                    }//NavigationView
                
            } // VStack
        } // ZStack

            

        }

    
    
    }


//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}

