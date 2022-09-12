//
//  ContentView.swift
//  Magzine
//
//  Created by Aiden Ly on 06/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ListCardView()
            .tabItem {
                Image(systemName: "house")

            }

            SearchView()
                .tabItem {
                Image(systemName: "magnifyingglass")
                        .modifier(NavbarIcon())

                }
            
            BookmarkView()
                .tabItem {
                    Image(systemName: "bookmark")
                        .modifier(NavbarIcon())
                }
            
            SettingView()
                .tabItem {
                    Image(systemName: "gearshape")

              }
            
            

        }
        .accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
