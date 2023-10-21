//
//  HomeView.swift
//  edUcate
//
//  Created by Nidhi Pabbathi on 10/21/23.
//

import SwiftUI

struct HomeView: View {
    let article: Article
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            AsyncImage(url: article.imageURL) {
                phase in
                switch phase {
                case .empty:
                    ProgressView()
                    
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                case .failure:
                    Image(systemName: "photo")
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            HomeView(article: .previewData[0])
                .listRowInsets(.init(top:0, leading: 0, bottom: 0, trailing: 0))
        }
        .listStyle(.plain)
    }
}
