//
//  NewsTabView.swift
//  edUcate
//
//  Created by Banah Daniella Abdeljaber on 10/21/23.
//

import SwiftUI

struct NewsTabView: View {
    
    @StateObject var articleNewsVM = ArticleNewsViewModel()
    
    var body: some View {
        NavigationView{
            ArticleListView(articles: articles)
                .overlay(overlayView)
                .refreshable {
                    loadTask()
                }
                .onAppear {
                    loadTask()
                }
                .onChange(of: articleNewsVM.selectedCategory) { _ in loadTask()
                }
                .navigationTitle(articleNewsVM.selectedCategory.text)
                .toolbarColorScheme(.dark, for: .navigationBar)
                .toolbarBackground(UColors.black, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing: menu)

        }
    }
    
    @ViewBuilder
    private var overlayView: some View {
        switch articleNewsVM.phase {
            case .empty: ProgressView()
            case .success(let articles) where articles.isEmpty: EmptyPlaceholderView(text: "No Articles", image: nil)
            case .failure(let error): RetryView(text: error.localizedDescription){
                loadTask()
                }
            default: EmptyView()
        }
    }
    
    private var articles: [Article] {
        if case let .success(articles) = articleNewsVM.phase {
            return articles
        } else {
            return []
        }
        
    }
    
    private func loadTask() {
        async {
            await articleNewsVM.loadArticles()
        }
    }
    
    private var menu: some View {
        Menu {
            Picker("Category", selection: $articleNewsVM.selectedCategory){
                ForEach(Category.allCases) {
                    Text($0.text).tag($0)
                }
            }
        } label: {
            Image(systemName: "fiberchannel")
                .imageScale(.large)
        }
    }

}


struct NewsTabView_Previews: PreviewProvider {
    static var previews: some View {
        NewsTabView(articleNewsVM: ArticleNewsViewModel(articles: Article.previewData))
    }
}
