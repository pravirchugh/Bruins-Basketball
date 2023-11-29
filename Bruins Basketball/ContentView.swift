//
//  ContentView.swift
//  Bruins Basketball
//
//  Created by Pravir Chugh on 11/29/23.
//

import SwiftUI

struct ContentView: View {
    
    var headerTextColor = Color(red: 1, green: 0.82, blue: 0)
    var backgroundColor = Color(red: 0.102, green: 0.118, blue: 0.192)
    
    var body: some View {
        
        VStack {
            
          
            
            HStack {
                Spacer()
                Text("UCLA Men's Basketball")
                    .foregroundColor(headerTextColor)
                    .font(.system(size: 20))
                Spacer()
                Spacer()
                Spacer()
                
                Image("Basketball Image Header")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            .padding()
            
            Spacer()
        }
        .padding()
        .background(backgroundColor)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
