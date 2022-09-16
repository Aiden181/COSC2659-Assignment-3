//
//  ArticleView.swift
//  Magzine
//
//  Created by Aiden Ly on 08/09/2022.
//

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

