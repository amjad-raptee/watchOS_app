//
//  MainScreen.swift
//  DinoWatch Watch App
//
//  Created by Raptee Developer on 05/09/24.
//

import SwiftUI
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

struct MainScreen: View {
    @State private var isAnimating = false
    var body: some View {
        VStack(spacing: 10){
            
            //Sync data
         
            HStack{
                Image(systemName: "arrow.clockwise")
                                .font(.system(size: 8))  
                                .foregroundColor(.gray)
                                
                Text("synced 2min ago")
                    .font(.system(size: 8))
            }
            
            // Lock Bike and Navigor Indicator
            
            BikeActionView()
            
            Text("Raptrix")
                .font(.system(size: 10, design: .monospaced)
                    .italic()
                    .bold())
                .foregroundColor( Color(hex: "#0BE4CD"))
            
            
            ChargingPercentView()
            
            
            
        }.padding(.all, 15)
            .background(Color(hex: "#191919"))
    }
}

#Preview {
    MainScreen()
}

struct ChargingPercentView: View {
     
    var body: some View {
        HStack( ){
            Image( "bolt").font(.system(size: 12))
            
            Spacer()
            

            GeometryReader { geo in
                ZStack( alignment: .leading){
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .frame(width: geo.size.width, height: 6)
                        
                        .foregroundColor(Color(hex: "#1DEB26" ).opacity(0.2))
                    
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .frame(width: geo.size.width * (10 / 100), height: 6)
                        
                        .foregroundColor(Color(hex: "#1DEB26" ))
                   
                    
                }
            }

               
            Spacer()
            
            HStack( alignment: .lastTextBaseline) {
                Text("45")
                    .font(.system(size: 16, design: .monospaced)
                        .italic()
                        .bold()).foregroundColor(.white)
                    .foregroundColor( Color(hex: "#0BE4CD"))
                
                Text("%")
                    .font(.system(size: 6, design: .monospaced)
                        .italic()
                        .bold())
                    .foregroundColor( Color(.white))
            }
            
            
            
        }.frame( width: .infinity)
    }
}

struct BikeActionView: View {
    var body: some View {
        HStack(alignment: .center ) {
            
            
            
            Image("lock_2")
                .font(.system(size: 10))
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .tint(Color.red)
            
            Spacer()
            
            Image("homeBike")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .padding()
                .frame( minWidth: 95,maxWidth: 100, minHeight: 80, maxHeight: 91)
            
          Spacer()
            
            
            
            
            
            
        }
    }
}
