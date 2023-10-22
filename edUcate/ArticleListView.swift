//
//  ArticleListView.swift
//  edUcate
//
//  Created by Banah Daniella Abdeljaber on 10/21/23.
//

import SwiftUI

struct ArticleListView: View {
    
    let articles: [Article]
    @State private var selectedArticle: Article?
    
    var body: some View {
        ZStack {
            UColors.black
                .ignoresSafeArea()
            List {
                ForEach(articles) { article in
                    HomeView(article: article)
                        .onTapGesture {
                            selectedArticle = article
                        }
                }
                .listRowBackground(Capsule())
                .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            .listStyle(.plain)
            .sheet(item: $selectedArticle){
                SafariView(url: $0.articleURL)
                    .edgesIgnoringSafeArea(.bottom)
            }
            .scrollContentBackground(.hidden)
        }
        .tint(UColors.white)
        
    }
}

struct ArticleListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ArticleListView(articles: Article.previewData)
        }
    }
}
