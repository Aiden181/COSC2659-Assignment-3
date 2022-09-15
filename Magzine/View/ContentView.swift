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
            HomeView()
            .tabItem {
                Image(systemName: "house.fill")
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

            
        }
        .accentColor(.black)
        .onAppear() {
            UITabBar.appearance().barTintColor = .white
        }
//        .frame(height: )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
