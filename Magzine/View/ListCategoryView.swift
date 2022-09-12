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
            HStack (spacing: 15){
                ForEach(0..<10){ index in
                    CategoryButton()
                }
            }
        }
//        .frame(maxHeight: 100)
        .frame(maxHeight: 50)
        .padding(.horizontal, 16)
    }
}

struct ListCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        ListCategoryView()
            .previewLayout(.sizeThatFits)
    }
}
