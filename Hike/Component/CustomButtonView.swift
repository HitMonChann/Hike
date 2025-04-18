//
//  CustomButtonView.swift
//  Hike
//
//  Created by Manuel Sanchez Sicilia on 10/3/25.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        // MARK: - ZSTACK
        ZStack{
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .white,
                            .customGreenLight,
                            .customGreenMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            Circle()
                .stroke(
                    LinearGradient(
                        colors: [
                            .customGrayLight,
                            .customGrayMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    ),
                    lineWidth: 4
                )
            
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(LinearGradient(
                    colors: [
                        .customGrayLight,
                        .customGrayMedium
                    ],
                    startPoint: .top,
                    endPoint: .bottom))
        }//: ZSTACK
        .frame(width: 58, height: 58)
    }
}

#Preview {
    CustomButtonView()
}
