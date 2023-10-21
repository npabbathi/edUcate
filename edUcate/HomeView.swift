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
                    HStack {
                        Spacer()
                        ProgressView()
                        Spacer()
                    }
                    
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode:
                                .fill)
                    
                case .failure:
                    HStack{
                        Spacer()
                        Image(systemName: "photo")
                            .imageScale(.large)
                        Spacer()
                    }
                    
                @unknown default:
                    fatalError()
                }
            }
            .frame(minHeight: 200, maxHeight: 300)
            .background(Color.gray.opacity(0.3))
            .clipped()
            
            VStack(alignment: .leading, spacing: 8) {
                Text(article.title)
                    .bold()
                    .lineLimit(3)
                
                Text(article.descriptionText)
                    .lineLimit(2)
                
                HStack {
                    Text(article.captionText)
                        .lineLimit(1)
                        .foregroundColor(.secondary)
                        .font(.caption)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "bookmark")
                    }
                    .buttonStyle(.bordered)
                    
                    Button {
                        presentShareSheet(url: article.articleURL)
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                    }
                    .buttonStyle(.bordered)
                    
                }
            }
            .padding([.horizontal, .bottom])
        }
    }
}

extension View {
    
    func presentShareSheet(url: URL) {
        let activityVC = UIActivityViewController(activityItems: [url], applicationActivities: nil)
        (UIApplication.shared.connectedScenes.first as? UIWindowScene)?
            .keyWindow?
            .rootViewController?
            .present(activityVC, animated: true)
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            List {
                HomeView(article: .previewData[0])
                    .listRowInsets(.init(top:0, leading: 0, bottom: 0, trailing: 0))
            }
            .listStyle(.plain)
        }
    }
}
