//
//  CenterContentView.swift
//  Hike
//
//  Created by Manuel Sanchez Sicilia on 10/3/25.
//
import SwiftUI

struct CenterContentView: View {
    let imageNumber: Int
    var body: some View{
        ZStack{
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            Color.customIndigoMedium,
                            Color.customSalmonLight
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 256, height: 256)
            
            Image("image-\(imageNumber)")
                .resizable()
                .scaledToFit()
                .animation(.default, value: imageNumber)
        }
    }
}
