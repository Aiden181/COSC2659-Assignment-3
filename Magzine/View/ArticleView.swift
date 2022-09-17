//
//  ArticleView.swift
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
 
  Created  date: 08/09/2022
  Last modified: 16/09/2022
  Acknowledgement: Acknowledge the resources that you use here.
*/

import SwiftUI
import WebKit

struct ArticleView: View {
    //@StateObject  private var cardViewModel = ViewModel()
    var article:ArticleItem
    var body: some View {
        
        VStack{
            TopNavbar()
                .padding(.top, 22)
                .padding(.bottom, 8)
            NavigationView {
        
            
            WebView(url: URL(string: article.directUrl)!)
                .frame(height: 900.0)
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3), radius: 20.0, x: 5, y: 5)
                .navigationBarHidden(true)

                       
            }
        }
        

    }
}
//
//struct ArticleView_Previews: PreviewProvider {
//    static var previews: some View {
//        ArticleView()
//    }
//}

