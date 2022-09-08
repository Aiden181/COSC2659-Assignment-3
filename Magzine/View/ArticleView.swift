//
//  ArticleView.swift
//  Magzine
//
//  Created by Aiden Ly on 08/09/2022.
//

import SwiftUI

struct ArticleView: View {
    var body: some View {
        ZStack{
            VStack{
                TopNavbar()
                    .padding(.bottom, 8)
                Image("image")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom, 15)
                VStack {
                    Text("Monarch population soars 4,900 percent since last year in thrilling 2021 western migration")
                        .modifier(ArticleTitleStyle())
                    HStack{
                        Image("avatar")
                            .resizable()
                            .modifier(AuthorAvatar())
                        Text("Elon Musk")
                            .modifier(CardAuthorText())
                        Spacer()
                        Text("1m ago")
                            .modifier(CardAuthorText())
                            
                    }//HStack
                    .frame(maxWidth: 370)
                    Text("When just 200 Western monarch butterflies arrived in the Pismo Beach Butterfly Grove from their northerly migration last year, park rangers feared the treasured insect would soon be gone forever. \n\nThis year, however, volunteers tallied their numbers at over 100,000, a spectacular swarm of hope that traveled down from as far north as Canada to the spend the winter on the California coast. \n\nIt’s expected that the monarch butterfly will be placed on the Endangered Species List soon, due to declines in both western and eastern monarch butterfly numbers. Genetically indistinguishable, they are separate merely for the fact that monarchs living and migrating east of the Rockies overwinter in Mexico, while those on the western side of the Rockies overwinter along California’s ")
                        .lineLimit(13)
                        .modifier(ArticleContentStyle())
                        .frame(maxWidth: 370)
                }//VStack 2
                .padding(.horizontal, 16)
                .frame(maxWidth: .infinity)
            }// VStack #1
            
        }// ZStack
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView()
    }
}
