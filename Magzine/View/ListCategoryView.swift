//
//  ListCategoryView.swift
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
 
  Created  date: 07/09/2022
  Last modified: 16/09/2022
  Acknowledgement: Acknowledge the resources that you use here.
*/

import SwiftUI

struct ListCategoryView: View {
    @Binding var selection: Int
    @Binding var articles:[ArticleItem]
    var apiURL: String
    @State private var apiURLCate = ""
    private let categories = Categories.allCases
    @Binding var isChanged:Bool
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack (spacing: -5){
                ForEach(0..<categories.count){ index in
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .modifier(CategoryBTN())
                            .foregroundColor(Color("LightGrey"))
                        Text(categories[index].name)
                            .modifier(CategoryText())
                            .foregroundColor(Color("Grey"))
                        if selection == index{
                            RoundedRectangle(cornerRadius: 20)
                                .modifier(CategoryBTN())
                                .foregroundColor(.black)
                            Text(categories[index].name)
                                .modifier(CategoryText())
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.horizontal, 8)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            selection = index
                            if(selection > 0){
                                self.apiURLCate = apiURL + "?category=\(categories[index].name)"
                            }
                            else{
                                self.apiURLCate = apiURL
                            }
                            print("CRAWL API: " + apiURLCate)
                            articles.removeAll();
                            guard let url = URL(string: apiURLCate) else{
                                return
                            }
                            let task = URLSession.shared.dataTask(with: url){data,_,error
                                in
                                guard let data = data, error == nil else{
                                                return
                                           }
                        
                                           do{
                                                let articles = try JSONDecoder().decode([ArticleItem].self, from: data)
                                               DispatchQueue.main.async {
                                                   self.articles = articles
                                                }
                                            }
                                            catch{
                                            print("ERROR: \(error)")
                                            }
                            }
                            task.resume()
                            
                        }
                    }
            }
        }
//        .frame(maxHeight: 100)
        .frame(maxHeight: 50)
        .padding(.horizontal, 16)
        }
    }
}

//struct ListCategoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListCategoryView(selection: index)
//            .previewLayout(.sizeThatFits)
//        }
//    }


