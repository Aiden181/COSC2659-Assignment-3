//
//  SplashScreenView.swift
//  Magzine
//
//  Created by Duong, Bui Dang Dac on 17/09/2022.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            RegisterView()
        } else {
            VStack{
                VStack{
                    Image(systemName: "newspaper")
                        .font(.system(size: 100))
                    Image("Magzine")
                        .frame(width: 90, height: 90, alignment: .center)
                } //VStack #2
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.5)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            } //VStack #1
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
            
        }

    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
