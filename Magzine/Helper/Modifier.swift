//
//  Modifier.swift
//  Magzine
//
//  Created by Aiden Ly on 07/09/2022.
//

import Foundation
import SwiftUI

//MARK: - Article Text Style
struct CardTitleText: ViewModifier{
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
struct CardAuthorText: ViewModifier{
    func body(content: Content) -> some View {
        content.font(.custom(FontManager.Poppins.regular, size: 13))
            .foregroundColor(Color("Grey"))
    }
}

//MARK: - Categories Text Style
struct CardCategoryText: ViewModifier{
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
    
//MARK: - Categories List Text Style
struct CategoryText: ViewModifier{
    func body(content: Content) -> some View {
        content.font(.custom(FontManager.Poppins.regular, size: 14))
    }
}

//MARK: - Categories List Button Style
struct CategoryBTN: ViewModifier{
    func body(content: Content) -> some View {
        content.frame(width: 105, height: 28, alignment: .center)
    }
}

//MARK: - Categories List Button Style
struct NavbarIcon: ViewModifier{
    func body(content: Content) -> some View {
        content.frame(width: 24, height: 24)
    }
}

//MARK: - Article Title Style
struct ArticleTitleStyle: ViewModifier{
    func body(content: Content) -> some View {
        content.font(.custom(FontManager.Poppins.semibold, size: 18))
    }
}

//MARK: - Article Content Style
struct ArticleContentStyle: ViewModifier{
    func body(content: Content) -> some View {
        content.font(.custom(FontManager.Poppins.regular, size: 15))
            .padding(.bottom, 20)
    }
}


//MARK: - Author Avatar Image Style
struct AuthorAvatar: ViewModifier{
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(width: 53, height: 53)
            .clipShape(Circle())
    }
}

//MARK: - TabViewTitle Content Style
struct TabviewTitle: ViewModifier{
    func body(content: Content) -> some View {
        content.font(.custom(FontManager.Poppins.semibold, size: 20))
    }
}
