import Foundation
import SwiftUI

struct DiscussionPost: View {
    
    @State var isLiked: Bool = false
    
    let model: DiscussionPostModel
    
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
                            .font(.system(size: 24, weight: .semibold, design: .default))
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
