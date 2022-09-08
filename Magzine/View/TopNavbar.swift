//
//  TopNavbar.swift
//  Magzine
//
//  Created by Aiden Ly on 08/09/2022.
//

import SwiftUI

struct TopNavbar: View {
    var body: some View {
        HStack{
            Image(systemName: "chevron.left")
            Spacer()
            HStack(spacing: 22){
                Image(systemName: "bookmark")
                Image(systemName: "square.and.arrow.up")
            }
        }
        .padding(.horizontal, 16)
    }
}

struct TopNavbar_Previews: PreviewProvider {
    static var previews: some View {
        TopNavbar()
            .previewLayout(.sizeThatFits)
    }
}
