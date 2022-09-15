//
//  TopNavbar.swift
//  Magzine
//
//  Created by Aiden Ly on 08/09/2022.
//

import SwiftUI

struct TopNavbar: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    

    var body: some View {
        ZStack {
            HStack{
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                    //
                    
                    
                }) {
                    Image(systemName: "chevron.left")
                    Text("Home")
                }
                .foregroundColor(.black)

                .navigationBarHidden(true)
                
                Spacer()
                
//                HStack(spacing: 22){
//                    Button{
//                        //
//                    } label: {
//                        Image(systemName: "bookmark")
//                            .foregroundColor(.black)
//
//                    }
//                    Button{
//                        //
//                    } label: {
//                        Image(systemName: "square.and.arrow.up")
//                            .foregroundColor(.black)
//
//                    }
//                }
            }
            .padding(.horizontal, 16)
        }
    }
}

struct TopNavbar_Previews: PreviewProvider {
    static var previews: some View {
        TopNavbar()
            .previewLayout(.sizeThatFits)
    }
}
