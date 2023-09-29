//
//  CustomButtonStyle1.swift
//  Design_M1L6_Challenge
//
//  Created by tom montgomery on 9/17/23.
//

import Foundation
import SwiftUI

struct customButtonStyle1: ButtonStyle {
    
    // 1) implement makeBody
    
    func makeBody(configuration: Configuration) -> some View {
        // 'configuration' is anything passed in from the parent
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.black, lineWidth: 3)
                .frame(height: 44)
                //.fill(configuration.isPressed ? .black : .white)
                .background(configuration.isPressed ? .black : .white)
            HStack {
                Image(systemName: "envelope")
                configuration.label
            }
            .foregroundColor(configuration.isPressed ? .white : .black)

        }
        .padding()
    }
    
}
