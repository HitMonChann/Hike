//
//  HeaderView.swift
//  Hike
//
//  Created by Manuel Sanchez Sicilia on 10/3/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Text("Hiking")
                    .fontWeight(.black)
                    .font(.system(size: 52))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [
                                .customGrayLight,
                                .customGrayMedium
                            ],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                
                Spacer()
                
                Button {
                   // ACTION: Show a Sheet
                    print("The button was pressed")
                } label: {
                    CustomButtonView()
                }

            }
            
            Text("Fun and enjoyable outdoor activities for friends and family")
                .multilineTextAlignment(.leading)
                .italic()
                .foregroundStyle(Color.customGrayMedium)
        }//: HEADER
        .padding(.horizontal, 30)
    }
}

#Preview {
    HeaderView()
}
