//
//  ContentView.swift
//  Magzine
//
//  Created by Aiden Ly on 06/09/2022.
//

import SwiftUI
import Firebase

struct ContentView: View {
    @State private var isUserLoggedOut = false
    
    var body: some View {
        if isUserLoggedOut {
            RegisterView()
        } else {
            content
        }
    }
    
    var content: some View {
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
            
//            BookmarkView()
//                .tabItem {
//                    Image(systemName: "bookmark")
//                        .modifier(NavbarIcon())
//                }
            
            ZStack{
                Color("White")
                VStack{
                    NavigationView {
                        VStack (alignment: .leading){
                            Text("Setting")
                                .offset(x: 20)
                                .modifier(TabviewTitle())
                            List(0..<1){ item in
                                NavigationLink {
                                    //
                                } label: {
                                    HStack{
                                        Image(systemName: "person.fill")
                                        Text("View Account")
                                    }
                                }
                                NavigationLink {
                                    TermsView()
                                } label: {
                                    HStack{
                                        Image(systemName: "questionmark.app")
                                        Text("Terms & Condition")
                                    }
                                }
                                NavigationLink {
                                    AboutView()
                                } label: {
                                    HStack{
                                        Image(systemName: "lock.square")
                                        Text("Privacy Policy")
                                    }
                                }

                                Button {
                                    signOut()
                                } label: {
                                    HStack{
                                        Image(systemName: "arrow.right.square")
                                            .foregroundColor(Color("Black"))
                                        Text("Logout")
                                            .foregroundColor(Color("Black"))
                                    }
                                }

                                
                            }
                            .onAppear(perform: {
                                    UITableView.appearance().contentInset.top = 10
                                })
                            .listStyle(InsetListStyle())
                            .navigationBarHidden(true)
                        }
                    }
                }
            }.tabItem {
                    Image(systemName: "gear")
                        .modifier(NavbarIcon())
                }
            
        }
        .accentColor(.black)
        .onAppear() {
            UITabBar.appearance().barTintColor = .white
//        .frame(height: )
        }
    }
    
    // MARK: - SIGNOUT FUNCTION
    func signOut(){
        print("Logged out")
        do {
           try Auth.auth().signOut()
            Auth.auth().addStateDidChangeListener { auth, user in
                if user == nil {
                    isUserLoggedOut.toggle()
                }
            }
        } catch let error {
            print(error)
        }
        print(isUserLoggedOut)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
