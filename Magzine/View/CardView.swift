//
//  CardView.swift
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
 
  Created  date: 06/09/2022
  Last modified: 16/09/2022
  Acknowledgement: Acknowledge the resources that you use here.
*/

import SwiftUI

struct CardView: View {
    var body: some View {
        HStack(alignment: .top){
            Image("thumbnail")
                .resizable()
                .modifier(ArticleImage())
            VStack(alignment: .leading, spacing: 7){
                Text("Monarch population soars 4,900 percent since last year in thrilling 2021 western migration").modifier(CardTitleText())
                Text("By Andy Corbley")
                    .modifier(CardAuthorText())
                HStack{
                    HStack(spacing: 15){
                        Text("World")
                            .modifier(CardCategoryText())
                        Image(systemName: "circle.fill")
                            .resizable()
                            .modifier(TimeDot())
                        Text("1m ago")
                            .modifier(CardAuthorText())
                    }
                    Spacer()
                    Button{
                        //
                    } label: {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.black)
                    }
                }
            } //VStack
        } //HStack #1
        .padding(.bottom, 20)
        .padding(.top, 20)
        .edgesIgnoringSafeArea(.top)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
    }
}
