//
//  ArticleListView.swift
//  edUcate
//
//  Created by Banah Daniella Abdeljaber on 10/21/23.
//

import SwiftUI

struct ArticleListView: View {
    
    let articles: [Article]
    
    var body: some View {
        List {
            ForEach(articles) { article in
                HomeView(article: article)
            }
            .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
}

struct ArticleListView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleListView(articles: Article.previewData)
    }
}
