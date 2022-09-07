//
//  CardView.swift
//  Magzine
//
//  Created by Aiden Ly on 06/09/2022.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        HStack(alignment: .top){
            Image("image")
                .resizable()
                .modifier(ArticleImage())
            VStack(alignment: .leading, spacing: 15){
                Text("Monarch population soars 4,900 percent since last year in thrilling 2021 western migration").modifier(ArticleText())
                Text("By Andy Corbley")
                    .modifier(AuthorText())
                HStack{
                    HStack(spacing: 15){
                        Text("World")
                            .modifier(ArticleCategoryText())
                        Image(systemName: "circle.fill")
                            .resizable()
                            .modifier(TimeDot())
                        Text("1m ago")
                            .modifier(TimeText())
                    }
                    Spacer()
                    Image(systemName: "ellipsis")
                }
            } //VStack
        } //HStack #1
        .padding(.bottom, 30)
        .padding(.top, 20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
    }
}
