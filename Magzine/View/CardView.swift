//
//  CardView.swift
//  Magzine
//
//  Created by Aiden Ly on 06/09/2022.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        Text("Hello, World!")
            .font(.custom(FontManager.Poppins.regular, size: 30))
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
