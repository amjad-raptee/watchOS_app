//
//  SwiftUIView.swift
//  DinoWatch Watch App
//
//  Created by Raptee Developer on 06/09/24.
//

import SwiftUI
//import SwiftSVG	

struct ControlScreen: View {
    @State private var isLocked: Bool = false
    @State private var isGoToLocation = false;
    var body: some View {
        NavigationView (){
            VStack {
                HStack {
                    VStack {
                        Button(action: {
                            isLocked.toggle()
                            
                        }) {
                            Image(isLocked ?  "lock" : "lockOpenRight" )
                                .foregroundColor(.red)
                                
                                

                        }
                        .frame( width: 48, height: 48)
                        .tint(.teal)
                        .foregroundColor(.teal)
                        .background(isLocked ? Color(hex: "#0BE4CD") : Color(hex: "#0BE4CD").opacity(0.2) )

                    .cornerRadius(100)
                 
                        Text(isLocked ? "Unlock" :  "Lock" )
                            .font(.system(size: 14))
                    } // VStack
                    Spacer()
                
                   VStack {
                        Button(action: {
                            
                        }) {
                            NavigationLink(destination: HifiScreen(), label: {
                                Image("backlightHigh").foregroundColor(.black)})
                            
                                

                        }
                        .frame( width: 48, height: 48)
                        .tint(.teal)
                        .foregroundColor(.teal)
                        .background(Color(hex: "#0BE4CD"))

                    .cornerRadius(100)
                 
                    Text("HIFI")
                            .font(.system(size: 14))
                    } // VStack
                    
                   
                        

                } // HStack
                
                
                
                Spacer()
                
                
                
              ZStack {
                    VStack {
                        Button(action: {
                            
                        }) {
                            
                            NavigationLink(destination: LocationScreen(), label: {
                                Image("pointScan").foregroundColor(.black).padding(.all, 0)
                            })
                            
                                

                        }
                        .frame( width: 48, height: 48)
                        .tint(.teal)
                        .foregroundColor(.teal)
                        .background(Color(hex: "#0BE4CD"))

                    .cornerRadius(100)
                 
                    Text("Locate")
                            .font(.system(size: 14))
                    }// VStack
                    
                        
                
                }
            


            } // HStack
            .padding(.horizontal, 20)

        }.navigationViewStyle(.stack).frame(height: .infinity)
        
    }
}

#Preview {
    ControlScreen()
}
