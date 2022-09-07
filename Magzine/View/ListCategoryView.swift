//
//  ListCategoryView.swift
//  Magzine
//
//  Created by Aiden Ly on 07/09/2022.
//

import SwiftUI

struct ListCategoryView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 10){
                CategoryButton()
                CategoryButton()
                CategoryButton()
                CategoryButton()
                CategoryButton()
                
            }
        }
    }
}

struct ListCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        ListCategoryView()
    }
}
