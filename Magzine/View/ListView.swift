//
//  ListView.swift
//  Magzine
//
//  Created by Aiden Ly on 07/09/2022.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List(0..<3) { item in
                CategoryButton()
                
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
