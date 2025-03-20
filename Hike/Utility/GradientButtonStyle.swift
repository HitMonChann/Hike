//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Manuel Sanchez Sicilia on 11/3/25.
//

import Foundation
import SwiftUI

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 20)
            .background(
                configuration.isPressed
                ?
                LinearGradient(
                    colors: [
                        .customGrayMedium,
                        .customGrayLight
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
                :
                    LinearGradient(
                        colors: [
                            .customGrayLight,
                            .customGrayMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
            )
            .clipShape(RoundedRectangle(cornerRadius: 40))
    }
}
