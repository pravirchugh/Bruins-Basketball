import SwiftUI

struct StatisticsView: View {
    
    var headerTextColor = Color(red: 1, green: 0.82, blue: 0)
    
    func showGames() {
        
    }
    
    func showScores() {
        
    }
    
    var body: some View {
        
        VStack {
            HStack {
                // two buttons (switch between)
                Button(action: showGames){
                    Text("View Upcoming Games")
                        .foregroundColor(headerTextColor)
                }
                Button(action: showScores){
                    Text("View Top Scoring Players")
                        .foregroundColor(headerTextColor)
                }
                
            }
            .buttonStyle(.bordered)
            .padding(.bottom, 40)
            
            
            Text("Main Text - will alternate between upcoming games and top scoring players when the respective button is clicked.")
                .foregroundColor(headerTextColor)
            
            Spacer()
            // content from web scraper
        }

    }
}
