//
//  HomeViewModel.swift
//  Magzine
//
//  Created by Duong, Bui Dang Dac on 12/09/2022.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var selection = 0
    @Published var openNotification = false
    @Published var showArticle = false

    
    func selectArticle(index: Int){
        showArticle = true
    }
    

    
}
