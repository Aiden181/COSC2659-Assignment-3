//
//  BottomNavbar.swift
//  Magzine
//
//  Created by Aiden Ly on 08/09/2022.
//

import SwiftUI

struct BottomNavbar: View {
    var body: some View {
        HStack(spacing: 77){
            Image(systemName: "house")
                .modifier(NavbarIcon())
            Image(systemName: "magnifyingglass")
                .modifier(NavbarIcon())
            Image(systemName: "bookmark")
                .modifier(NavbarIcon())
            Image("settings")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
        }
    }
}

struct BottomNavbar_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavbar()
            .previewLayout(.sizeThatFits)
    }
}
