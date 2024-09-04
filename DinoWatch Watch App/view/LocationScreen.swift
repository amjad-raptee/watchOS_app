//
//  LocationScreen.swift
//  DinoWatch Watch App
//
//  Created by Raptee Developer on 06/09/24.
//

import SwiftUI

struct LocationScreen: View {
    var body: some View {
        GeometryReader { geometry in
            Group {
                ScrollView() {
                    VStack() {
                        Image("location_small")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 24)
                            .padding(.vertical,0)
                            .padding(.horizontal, 0)
                        
                        Text("Raptee.HV HQ")
                            .font(.system(size: 12, weight: .bold))
                        
                        Text("2/850, Gowri Nagar, Lalithamba Nagar, Mugalivakkam, Chennai, Tamil Nadu 600125")
                            .multilineTextAlignment(.center)
                            .font(.system(size: 8))
                            .foregroundColor(Color(hex: "#A4A4A4"))
                            .padding(.horizontal, 8)
                            .frame(height: geometry.size.height * 0.25)
                        Image("location_big")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .clipped()
                            .padding(.horizontal, 20)
                    }
                    
                    
                    
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
    }
}

#Preview {
    LocationScreen()
}
