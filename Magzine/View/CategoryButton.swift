//
//  CategoryButton.swift
//  Magzine
//
//  Created by Aiden Ly on 08/09/2022.
//

import SwiftUI

struct CategoryButton: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 40)
                .modifier(CategoryBTN())
                .foregroundColor(Color("LightGrey"))
            Text("World")
                .modifier(CategoryText())
                .foregroundColor(Color("Grey"))
        }
    }
}

struct CategoryButton_Previews: PreviewProvider {
    static var previews: some View {
        CategoryButton().previewLayout(.sizeThatFits)
    }
}
