import SwiftUI

struct HeaderView: View {
    
    var headerTextColor = Color(red: 1, green: 0.82, blue: 0)
    
    var body: some View {

        HStack {
            
            Text("UCLA Men's Basketball")
                .foregroundColor(headerTextColor)
                .font(.system(size: 20))
                .fontWeight(.bold)
                .underline(true, color: headerTextColor)
            
            Spacer()
           
            Image("Basketball Image Header")
                .resizable()
                .frame(width: 50, height: 50)
                .aspectRatio(contentMode: .fit)
            
            
            
        }
        .padding()

    }
}
