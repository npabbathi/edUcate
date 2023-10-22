//
//  ChatView.swift
//  edUcate
//
//  Created by Nidhi Pabbathi on 10/21/23.
//

import SwiftUI

struct ChatView: View {
    
    @Binding var text: String
    
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
                Spacer()
                VStack{
                    DiscussionPost(username: "user 1",
                                   post: "What are your thoughts on the current speaker of the house situation? 4 score and 7 years ago some people did something and i really want this to get larger",
                                   imageName: "user1")
                    .padding(10)
                    DiscussionPost(username: "user 2",
                                   post: "i like food lalala i love food wooo hoo is this two lines yet. actually these lines need to be",
                                   imageName: "user2")
                    .padding(10)
                    DiscussionPost(username: "user 3",
                                   post: "wow im out of pics",
                                   imageName: "user1")
                    .padding(10)
                }
                .padding(10)
            }
        }
    }
}

struct DiscussionPost: View {
    
    @State var isLiked: Bool = false
    
    let username: String
    let post: String
    let imageName: String
    
    var body: some View {
        VStack {
            HStack {
                Image(imageName)
                    .resizable()
                    .frame(width: 50, height: 50, alignment: Alignment.center)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(25)
                VStack {
                    HStack {
                        Text(username)
                            .foregroundColor(UColors.white)
                            .font(.system(size: 18, weight: .semibold, design: .default))
                        Spacer()
                    }
                    
                    HStack {
                        Text("12 minutes ago")
                            .foregroundColor(Color(.systemGray3))
                        Spacer()
                    }
                }
                Spacer()
            }
            
            HStack {
                Text(post)
                    .font(.system(size: 20, weight: .regular, design: .default))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(UColors.white)
                Spacer()
            }
            
            HStack {
                Button(action: {
                    isLiked.toggle()
                }, label: {
                    Text(isLiked ? "Liked" : "Like")
                        .foregroundColor(UColors.white)
                })
                .padding(5)
                Button(action: {
                    
                }, label: {
                    Text("Comment")
                        .foregroundColor(UColors.white)
                })
                .padding(5)
                Button(action: {
                    
                }, label: {
                    Text("Share")
                        .foregroundColor(UColors.white)
                })
                .padding(5)
            }
            .padding()
        }
        .padding()
        .background(UColors.blue)
        .cornerRadius(25)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(text: .constant(""))
    }
}
