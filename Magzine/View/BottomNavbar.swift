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
            Button{
                //
            } label: {
                Image(systemName: "house")
                    .modifier(NavbarIcon())
                    .foregroundColor(.black)
            }
            
            Button{
                //
            } label: {
                Image(systemName: "magnifyingglass")
                    .modifier(NavbarIcon())
                    .foregroundColor(.black)
            }
            
            
            Button{
                //
            } label: {
                Image(systemName: "bookmark")
                    .modifier(NavbarIcon())
                    .foregroundColor(.black)
            }

           
            Button{
                //
            } label: {
                Image("settings")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.black)
            }


        }
    }
}

struct BottomNavbar_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavbar()
            .previewLayout(.sizeThatFits)
    }
}
