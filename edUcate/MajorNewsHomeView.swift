//
//  MajorNewsHomeView.swift
//  edUcate
//
//  Created by Nidhi Pabbathi on 10/22/23.
//

import SwiftUI

struct MajorNewsHomeView: View {
    let cornerRadius = 40
    var body: some View {
        ZStack {
            UColors.green
                .ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false)  {
                VStack {
                    Text("ED**U**CATE 4 ALL")
                        .fontWeight(.light)
                        .font(.largeTitle)
                        .kerning(8)
                        .foregroundColor(UColors.white)
                        .padding(.vertical, 20)
                    
                    Divider()
                        .background(UColors.white)
                        .padding()
                    
                    Text("ISREAL WAR")
                        .fontWeight(.light)
                        .font(.largeTitle)
                        .kerning(8)
                        .foregroundColor(UColors.white)
                        .padding(.vertical, 20)
                        .padding(.horizontal, 50)
                        .background(UColors.blue)
                        .cornerRadius(CGFloat(cornerRadius))
                        .shadow(radius: 3)
                        .overlay(
                            RoundedRectangle(cornerRadius: CGFloat(cornerRadius))
                                .stroke(UColors.white, lineWidth: 4)
                        )
                        .padding(.vertical, 20)
                    
                    Spacer()
                    
                    ScrollView(.horizontal, showsIndicators: false)  {
                        HStack {
                            ZStack {
                                UColors.teal
                                    .frame(width: 300, height: 400)
                                    .cornerRadius(CGFloat(cornerRadius))
                                    .padding()
                                    .shadow(radius: 3)
                                VStack {
                                    Text("TITLE")
                                        .fontWeight(.semibold)
                                        .font(.largeTitle)
                                        .kerning(2)
                                        .foregroundColor(UColors.white)
                                        .padding(.vertical, 30)
                                    Divider()
                                        .frame(height: 1)
                                        .background(UColors.white)
                                        .padding(.horizontal, 40)
                                    
                                    Text("Description")
                                        .font(.title3)
                                        .foregroundColor(UColors.white)
                                    
                                    Spacer()
                                }
                            }
                            ZStack {
                                UColors.blue
                                    .frame(width: 300, height: 400)
                                    .cornerRadius(CGFloat(cornerRadius))
                                    .padding()
                                    .shadow(radius: 3)
                                VStack {
                                    Text("TITLE")
                                        .fontWeight(.semibold)
                                        .font(.largeTitle)
                                        .kerning(2)
                                        .foregroundColor(UColors.white)
                                        .padding(.vertical, 30)
                                    Divider()
                                        .frame(height: 1)
                                        .background(UColors.white)
                                        .padding(.horizontal, 40)
                                    
                                    Text("Description")
                                        .font(.title3)
                                        .foregroundColor(UColors.white)
                                    
                                    Spacer()
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct MajorNewsHomeView_Previews: PreviewProvider {
    static var previews: some View {
        MajorNewsHomeView()
    }
}
