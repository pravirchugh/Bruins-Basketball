import SwiftUI

struct StatisticsView: View {
    
    var headerTextColor = Color(red: 1, green: 0.82, blue: 0)
    
    @State var selectedButton: Int? = 1
    
    func showGames() {
        selectedButton = 1
    }
    
    func showScores() {
        selectedButton = 2
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
            
            // this is where the change betwen the two views occurs.
            if (selectedButton == 1){
                Text("Upcoming Games")
                    .foregroundColor(headerTextColor)
                GameView()
            } else {
                Text("Top Scoring Players")
                    .foregroundColor(headerTextColor)
                PlayerView()
            }
            
            Spacer()
            // content from web scraper
        }

    }
}
