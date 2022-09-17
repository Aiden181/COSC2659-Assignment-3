//
//  TopNavbar.swift
//  Magzine
//
/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 3
  Author(s): Bui Dang Dac Duong (s3753278)
             Nguyen Tuan Minh (s3878566)
             Nguyen Duc Minh (s3877477)
             Khoi Viet Ly (s3753278)
             Tran Thien Van (s3740845)
 
  Created  date: 08/09/2022
  Last modified: 16/09/2022
  Acknowledgement: Acknowledge the resources that you use here.
*/

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
