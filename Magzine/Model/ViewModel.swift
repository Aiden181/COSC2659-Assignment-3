//
//  fetchData.swift
//  Magzine
//
//  Created by Minh Nguyen Tuan on 15/09/2022.
//

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
            Image("news24")
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

