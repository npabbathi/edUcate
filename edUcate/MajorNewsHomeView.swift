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
                                    Text("False Claims Around Israel Attacks Include Recycled Videos and a Game Clip")
                                        .frame(width: 250)
                                        .fontWeight(.semibold)
                                        .font(.title)
                                        .kerning(2)
                                        .foregroundColor(UColors.white)
                                        .padding(.vertical, 30)
                                        .multilineTextAlignment(.center)
                                    Divider()
                                        .frame(height: 1)
                                        .background(UColors.white)
                                        .padding(.horizontal, 40)
                                    
                                    Text("Graphic imagery and footage have flooded social media since Hamas terrorists attacked Israelis...")
                                        .frame(width: 250)
                                        .font(.title3)
                                        .foregroundColor(UColors.white)
                                    Link("Learn More", destination: URL(string: "https://www.nytimes.com/article/israel-attacks-video-disinformation.html")!)
                                        .tint(UColors.blue)
                                        .buttonStyle(.bordered)
                                        .cornerRadius(10)
                                        .padding()
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
                                    Text("Israel is at war with Hamas. Here’s what to know")
                                        .frame(width: 250)
                                        .fontWeight(.semibold)
                                        .font(.title)
                                        .kerning(2)
                                        .foregroundColor(UColors.white)
                                        .padding(.vertical, 30)
                                        .multilineTextAlignment(.center)
                                    Divider()
                                        .frame(height: 1)
                                        .background(UColors.white)
                                        .padding(.horizontal, 40)
                                    
                                    Text("Israel and Hamas are at war, after the Palestinian militant group launched surprise cross-border raids from Gaza, killing more...")
                                        .frame(width: 250)
                                        .font(.title3)
                                        .foregroundColor(UColors.white)
                                    Link("Learn More", destination: URL(string: "https://amp.cnn.com/cnn/2023/10/16/middleeast/israel-hamas-gaza-war-explained-week-2-mime-intl/index.html")!)
                                        .tint(UColors.teal)
                                        .buttonStyle(.bordered)
                                        .cornerRadius(10)
                                        .padding()
                                    
                                    Spacer()
                                }
                            }
                        }
                    }
                    
                    Divider()
                        .background(UColors.white)
                        .padding()
                    
                    Text("RUSSIA-UKRAIN WAR")
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
                        .multilineTextAlignment(.center)
                    
                    ScrollView(.horizontal, showsIndicators: false)  {
                        HStack {
                            ZStack {
                                UColors.blue
                                    .frame(width: 300, height: 400)
                                    .cornerRadius(CGFloat(cornerRadius))
                                    .padding()
                                    .shadow(radius: 3)
                                VStack {
                                    Text("Missile Strike Kills Six Workers at Postal Depot, Ukraine Says")
                                        .frame(width: 250)
                                        .fontWeight(.semibold)
                                        .font(.title)
                                        .kerning(2)
                                        .foregroundColor(UColors.white)
                                        .padding(.vertical, 30)
                                        .multilineTextAlignment(.center)
                                    Divider()
                                        .frame(height: 1)
                                        .background(UColors.white)
                                        .padding(.horizontal, 40)
                                    
                                    Text("The facility, on the outskirts of the eastern city of Kharkiv, was far from the front line but only about 20 miles from Russia’s border.")
                                        .frame(width: 250)
                                        .font(.title3)
                                        .foregroundColor(UColors.white)
                                    Link("Learn More", destination: URL(string: "https://www.nytimes.com/2023/10/22/world/europe/russian-missile-ukraine-depot.html")!)
                                        .tint(UColors.teal)
                                        .buttonStyle(.bordered)
                                        .cornerRadius(10)
                                        .padding()
                                    
                                    Spacer()
                                }
                            }
                            
                            ZStack {
                                UColors.teal
                                    .frame(width: 300, height: 400)
                                    .cornerRadius(CGFloat(cornerRadius))
                                    .padding()
                                    .shadow(radius: 3)
                                VStack {
                                    Text("List of key events, day 606")
                                        .frame(width: 250)
                                        .fontWeight(.semibold)
                                        .font(.title)
                                        .kerning(2)
                                        .foregroundColor(UColors.white)
                                        .padding(.vertical, 30)
                                        .multilineTextAlignment(.center)
                                    Divider()
                                        .frame(height: 1)
                                        .background(UColors.white)
                                        .padding(.horizontal, 40)
                                    
                                    Text("As the war enters its 606th day, these are the main developments.")
                                        .frame(width: 250)
                                        .font(.title3)
                                        .foregroundColor(UColors.white)
                                    Link("Learn More", destination: URL(string: "https://www.aljazeera.com/news/2023/10/22/russia-ukraine-war-list-of-key-events-day-606")!)
                                        .tint(UColors.blue)
                                        .buttonStyle(.bordered)
                                        .cornerRadius(10)
                                        .padding()
                                    Spacer()
                                }
                            }
                            
                        }
                    }
                    
                    Divider()
                        .background(UColors.white)
                        .padding()
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
