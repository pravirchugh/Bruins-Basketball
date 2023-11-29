//
//  ContentView.swift
//  Bruins Basketball
//
//  Created by Pravir Chugh on 11/29/23.
//

import SwiftUI

struct ContentView: View {
    
    var backgroundColor = Color(red: 0.102, green: 0.118, blue: 0.192)
    
    var body: some View {
        
        VStack {
            HeaderView()
            
            
            
            StatisticsView()
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
