//
//  CustomButtonStyle2.swift
//  Design_M1L6_Challenge
//
//  Created by tom montgomery on 9/27/23.
//

import Foundation
import SwiftUI

struct CustomButtonStyle2: ButtonStyle {
    
    // 1) implememnt makeBody
    
    func makeBody(configuration: Configuration) -> some View {
        // configuration is anything passed in from the parent
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(.white)
                .frame(height: 44)
                //.background(.white)
            configuration.label
                .foregroundColor(.gray)
        }
        .shadow(radius: configuration.isPressed ? 10 : 5)
        .background(Color.white)
        .padding()
    }

}
