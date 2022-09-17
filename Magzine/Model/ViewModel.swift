//
//  fetchData.swift
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
 
  Created  date: 15/09/2022
  Last modified: 16/09/2022
  Acknowledgement: Acknowledge the resources that you use here.
*/

import Foundation
import SwiftUI

struct URLImage:View{
    let urlString:String
    @State var data: Data?
    var body: some View{
        if let data = data, let uiimage = UIImage(data: data) {
            Image(uiImage: uiimage)
                .resizable()
                .modifier(ArticleImage())
        }
        else{
            Image("Magzine")
                .resizable()
                .modifier(ArticleImage())
                .onAppear{
                    fetchData()
                }
        }
    }
    private func fetchData(){
        guard let url = URL(string: urlString) else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data,_,_ in
            self.data = data
        }
        task.resume()
    }
}
class ViewModel: ObservableObject{
    @Published var articles:[ArticleItem] = []
    func parseJSON(string: String){
        articles.removeAll();
        guard let url = URL(string: string) else{
            return
        }
        let task = URLSession.shared.dataTask(with: url){[weak self]data,_,error
            in
            guard let data = data, error == nil else{
                            return
                       }
    
                       do{
                            let articles = try JSONDecoder().decode([ArticleItem].self, from: data)
                           DispatchQueue.main.async {
                               self?.articles = articles
                            }
                        }
                        catch{
                        print("ERROR: \(error)")
                        }
        }
        task.resume()
    }
}

