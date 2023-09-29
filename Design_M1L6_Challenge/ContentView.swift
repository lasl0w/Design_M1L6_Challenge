//
//  ContentView.swift
//  Design_M1L6_Challenge
//
//  Created by tom montgomery on 9/17/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Button(action: {print("first button")},
                   label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 3)
                        .stroke(Color.black, lineWidth: 3)
                        .frame(height: 44)
                        .foregroundColor(.white)
                        
                    HStack {
                        Image(systemName: "envelope")
                        Text("Contact")
                            
                    }
                    .foregroundColor(.black )

                }
                .padding()
            })
            
            Button("Contact") {
                print("custom contact")
            }
            .buttonStyle(customButtonStyle1())
            
            Button("Ghost Button") {
                print("ghost button")
            }
            .buttonStyle(CustomButtonStyle2())
            
            Button("Contact") {
                print("Chris line button")
            }
            .buttonStyle(LineButtonStyle(symbol: "envelope"))
            
            Button("Ghost 2") {
                print("Ghost 2")
            }
            .buttonStyle(GhostButtonStyle())
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
