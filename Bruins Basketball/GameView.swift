//
//  GameView.swift
//  Bruins Basketball
//
//  Created by Pravir Chugh on 3/31/24.
//

import SwiftUI

struct Game {
    var opponent: String
    var date: String
    var time: String
    var homeGame: Bool
}

struct GameView: View {
    
    var headerTextColor = Color(red: 1, green: 0.82, blue: 0)
    
    
    
    var upcomingGames: [Game] = [
        Game(opponent: "Arizona State", date: "March 9th", time: "8PM", homeGame: true),
        Game(opponent: "Oregon State", date: "March 13th", time: "2:30PM", homeGame: false),
        Game(opponent: "Oregon", date: "March 14th", time: "2:30PM", homeGame: false)
    ]
    
    
    /*
     var upcomingGames =
     Represent this as a single struct instead, for better compartmentalization. This way, we don't have multiple arrays and can change input format flexibly.
     opponents = ["Arizona State", "Oregon State", "Oregon"]
     var dates = ["March 9th", "March 13th", "March 14th"]
     var timesInPST = [::]
     
     */
    
    var body: some View {
        ForEach(0..<upcomingGames.count) { i in
            HStack {
                
                // placeholder image
                Image("Basketball Image Header")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fit)
                
                
                VStack {
                    
                    if(upcomingGames[i].homeGame){
                        Text("versus " + upcomingGames[i].opponent)
                            .foregroundColor(headerTextColor)
                            .font(.system(size: 16))
                            .fontWeight(.bold)
                            .underline(true, color: headerTextColor)
                    } else {
                        Text("at " + upcomingGames[i].opponent)
                            .foregroundColor(headerTextColor)
                            .font(.system(size: 16))
                            .fontWeight(.bold)
                            .underline(true, color: headerTextColor)
                    }
                
                    
                    HStack {
                        Text(upcomingGames[i].date)
                            .foregroundColor(headerTextColor)
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .underline(false, color: headerTextColor)
                        
                        Text(upcomingGames[i].time)
                            .foregroundColor(headerTextColor)
                            .font(.system(size: 12))
                    }
                }
                
                Spacer()
                
                
            }
            Spacer()
        }
    }
}


