//
//  Modifier.swift
//  Magzine
//
//  Created by Aiden Ly on 07/09/2022.
//

import Foundation
import SwiftUI

//MARK: - Article Text Style
struct ArticleText: ViewModifier{
    func body(content: Content) -> some View {
        content.font(.custom(FontManager.Poppins.semibold, size: 14))
            .foregroundColor(Color("Black"))
    }
}

//MARK: - Article Image Style
struct ArticleImage: ViewModifier{
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(width: 150, height: 150)
    }
}

    
//MARK: - Author Text Style
struct AuthorText: ViewModifier{
    func body(content: Content) -> some View {
        content.font(.custom(FontManager.Poppins.regular, size: 13))
            .foregroundColor(Color("Grey"))
    }
}

//MARK: - Categories Text Style
struct ArticleCategoryText: ViewModifier{
    func body(content: Content) -> some View {
        content.font(.custom(FontManager.Poppins.semibold, size: 13))
            .foregroundColor(Color("Blue"))
    }
}

//MARK: - Time Dot Style
struct TimeDot: ViewModifier{
    func body(content: Content) -> some View {
        content.frame(width: 7, height: 7)
            .foregroundColor(Color("Grey"))
    }
}

//MARK: - Time Text Style
struct TimeText: ViewModifier{
    func body(content: Content) -> some View {
        content.font(.custom(FontManager.Poppins.regular, size: 13))
            .foregroundColor(Color("Grey"))
    }
}
    
//MARK: - Categories List Text Style
struct CategoryText: ViewModifier{
    func body(content: Content) -> some View {
        content.font(.custom(FontManager.Poppins.regular, size: 14))
    }
}

//MARK: - Categories List Button Style
struct CategoryBTN: ViewModifier{
    func body(content: Content) -> some View {
        content.frame(width: 80, height: 28, alignment: .center)
    }
}

