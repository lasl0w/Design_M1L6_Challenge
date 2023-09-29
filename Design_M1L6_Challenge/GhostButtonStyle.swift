//
//  GhostButtonStyle.swift
//  Design_M1L6_Challenge
//
//  Created by tom montgomery on 9/28/23.
//

import Foundation
import SwiftUI

struct GhostButtonStyle : ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
                .frame(height: 44)
                .shadow(radius: configuration.isPressed ? 0 : 20)
                .opacity(0.5)
            configuration.label
                .foregroundColor(.gray)
            
        }
        .padding()
    }
}
