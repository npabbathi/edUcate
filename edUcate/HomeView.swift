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
        VStack {
            ZStack {
                UColors.green
                    .ignoresSafeArea()
                VStack(alignment: .center, spacing: 16){
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
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode:
                                        .fit)
                                .cornerRadius(10)
                                .padding()
                                .frame(maxHeight: 200)
                            
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
                    //.background(Color.gray.opacity(0.3))
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(article.title)
                            .bold()
                            .lineLimit(3)
                            .foregroundColor(UColors.white)
                            .font(.title2)
                        
                        Text(article.descriptionText)
                            .lineLimit(2)
                            .foregroundColor(UColors.white)
                        
                        HStack {
                            Text(article.captionText)
                                .lineLimit(1)
                                .foregroundColor(UColors.white)
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
        .cornerRadius(20)
        .padding()
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
