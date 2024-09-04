//
//  HifiScreen.swift
//  DinoWatch Watch App
//
//  Created by Raptee Developer on 06/09/24.
//

import SwiftUI

struct HifiScreen: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(){
            
                VStack {
                    Button(action: {
                        
                    }) {
                        Image("backlightHigh").foregroundColor(.black)
                            

                    }
                    .frame( width: 48, height: 48)
                    .tint(.teal)
                    .foregroundColor(.teal)
                    .background(Color(hex: "#0BE4CD"))

                .cornerRadius(100)
             
               
                }.padding(.all, 0) // VStack
                
             
                
                Text("Track your bike nearby, with signals flashing to catch your attention")
                    .font(.system(size: 12))
                    .multilineTextAlignment(.center)
                    .frame(height: geometry.size.height*0.4)
                Spacer( minLength: 10)
    
               
                Button(action:{
                    
                }, label: {
                    Text("Stop")
                        .font(.system(size: 16))
                        .foregroundColor( Color(hex: "#FF402E"))
                        .padding(.all, 0)
                }).frame(height: 30)
                    .padding(.all, 0)
                    .contentMargins(.all, 0)
                    
                
            }
        }
    }
}

#Preview {
    HifiScreen()
}
