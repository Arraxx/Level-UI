//
//  FrontPage.swift
//  LevelUI
//
//  Created by Palak on 18/12/23.
//

import SwiftUI

struct FrontPage: View {
    var body: some View {
        VStack{
            HeadView()
                .padding(.top,5)
            Spacer()
            ScrollView{
                VStack{
                    HStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 360, height: 100)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/.opacity(0.7))
                            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 5)
                            .overlay(
                                HStack(spacing:30){
                                    Text("Your level premium is about to \nexpire, renew now!")
                                        .font(.footnote)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                    Button(action : {}){
                                        RoundedRectangle(cornerRadius:10)
                                            .frame(width: 100, height: 50)
                                            .overlay(
                                                HStack{
                                                    Text("Explore")
                                                        .font(.footnote)
                                                        .foregroundColor(.white)
                                                        .fontWeight(.semibold)
                                                    Image(systemName: "arrow.forward")
                                                        .foregroundColor(.white)
                                                }
                                            )
                                    }
                                }
                            )
                    }.padding()
                    GoalsView()
                        .padding(.bottom)
                    
                    ActivityView()
                }
            }
        }
    }
}

#Preview {
    FrontPage()
}
