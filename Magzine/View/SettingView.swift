//
//  SettingView.swift
//  Magzine
//
//  Created by Aiden Ly on 10/09/2022.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
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
                                //
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
        }
        
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
