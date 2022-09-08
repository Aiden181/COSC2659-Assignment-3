//
//  ListCardView.swift
//  Magzine
//
//  Created by Aiden Ly on 08/09/2022.
//

import SwiftUI

struct ListCardView: View {
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            CardView()
                .frame( maxWidth: .infinity)
        }
        .edgesIgnoringSafeArea(.top)
        .listStyle(GroupedListStyle())
            
        }
    }


struct ListCardView_Previews: PreviewProvider {
    static var previews: some View {
        ListCardView()
    }
}
