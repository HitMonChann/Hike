//
//  CardView.swift
//  Hike
//
//  Created by Manuel Sanchez Sicilia on 7/3/25.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    @State private var imageNumber: Int = 1
    @State private var ramdomNumber: Int = 1
    
    // MARK: - FUNCTIONS
    func ramdomImage() {
        repeat {
            ramdomNumber = Int.random(in: 1...5)
        } while ramdomNumber == imageNumber
       
        imageNumber = ramdomNumber
    }
    
    var body: some View {
        
        ZStack {
            CustomBackgroundView()
            VStack{
                // MARK: - HEADER
                HeaderView()
                // MARK: - CENTER CONTENT
                CenterContentView(imageNumber: imageNumber)
                // MARK: - FOOTER
                Button {
                    ramdomImage()
                } label: {
                    Text("Explore more")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGreenLight,
                                    .customGreenMedium
                                ],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(
                            color: .black.opacity(0.25),
                            radius: 0.25,
                            x: 1,
                            y: 2
                        )
                }
                .buttonStyle(GradientButtonStyle())
                //: FOOTER
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
