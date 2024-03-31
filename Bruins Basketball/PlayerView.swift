//
//  PlayerView.swift
//  Bruins Basketball
//
//  Created by Pravir Chugh on 3/30/24.
//

import SwiftUI

struct PlayerView: View {
    
    var headerTextColor = Color(red: 1, green: 0.82, blue: 0)
    
    var playerNames = ["Player 1", "Player 2", "Player 3"]
    
    var body: some View {
        ForEach(0..<playerNames.count) { i in
            HStack {
               
                if(i % 2 == 0){
                    Image("Basketball Image Header")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .aspectRatio(contentMode: .fit)
                    }
                
                VStack {
                    
                        Text(playerNames[i])
                            .foregroundColor(headerTextColor)
                            .font(.system(size: 16))
                            .fontWeight(.bold)
                            .underline(true, color: headerTextColor)
                        
                        Text("Number of Points Scored per Game")
                            .foregroundColor(headerTextColor)
                            .font(.system(size: 12))
                    }
                if(i % 2 == 1){
                    Image("Basketball Image Header")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .aspectRatio(contentMode: .fit)
                    }
                }
            Spacer()
            
                
            }
        
        
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
