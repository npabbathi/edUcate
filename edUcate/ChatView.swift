//
//  ChatView.swift
//  edUcate
//
//  Created by Nidhi Pabbathi on 10/21/23.
//

import SwiftUI

struct DiscussionPostModel: Hashable {
    let username: String
    let post: String
    let imageName: String
}

struct ChatView: View {
    
    @Binding var text: String

    let posts: [DiscussionPostModel] = [
        DiscussionPostModel(username: "EXAMPLE USER 1",
                            post: "What are your thoughts on the current speaker of the house situation?",
                            imageName: "user1"),
        DiscussionPost(username: "EXAMPLE USER 2",
                        post: "Palestine has been Israeli occupation for around 75 years.",
                        imageName: "user2"),
        DiscussionPost(username: "EXAMPLE USER 3",
                        post: "Are current students able to benefit from federal student loan forgiveness programs? If so, what is the best way to utilize them as a resource?",
                        imageName: "user1")
    ]
    
    var body: some View {
        ZStack{
            UColors.black
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("ED**U**CATE **4**US")
                        .font(.largeTitle)
                        .kerning(10)
                        .foregroundColor(UColors.white)
                    Spacer()
                }.padding()
                
                TextField("Search...", text: $text)
                    .padding(7)
                    .background(Color(.systemGray5))
                    .cornerRadius(10)
                    .padding(.horizontal, 15)
               
                ZStack {
                    ScrollView(.vertical) {
                        VStack {
                            ForEach(posts, id: \.self) { model in
                                    DiscussionPost(model: model)
                                                        .padding(10)
                            }
                        }.padding(10)
                    }
                }
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(text: .constant(""))
    }
}
