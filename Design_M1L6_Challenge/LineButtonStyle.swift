//
//  LineButtonStyle.swift
//  Design_M1L6_Challenge
//
//  Created by tom montgomery on 9/28/23.
//
import Foundation
import SwiftUI

struct LineButtonStyle: ButtonStyle {
    
    var symbol: String
    
    func makeBody(configuration: Configuration) -> some View {

        ZStack {
            Rectangle()
                .foregroundColor(configuration.isPressed ? .black : .white)
            // black border when the foreground is white
                .border(configuration.isPressed ? .white : .black)
                .frame(height: 44)
            HStack {
                Image(systemName: symbol)
                configuration.label
            }
        }
        .foregroundColor(configuration.isPressed ? .white : .black)
        .padding()
    }

}

