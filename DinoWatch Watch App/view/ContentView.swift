//
//  ContentView.swift
//  DinoWatch Watch App
//
//  Created by Raptee Developer on 04/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isAlive=false
    @State private var opacity=0.0
    var body: some View {
        if isAlive{
            TabViewScreen()
        }else{
            VStack {
                
                
                Text("RAPTEE")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .italic().opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 1.0)) {
                            opacity = 1.0
                        }
                        
                        
                        
                    }

                
                
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(Color.black).onAppear(){
                DispatchQueue.main.asyncAfter(deadline: .now()+2){
                    withAnimation {
                        isAlive = true
                    }
                    
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
