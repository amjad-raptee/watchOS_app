//
//  TabView.swift
//  DinoWatch Watch App
//
//  Created by Raptee Developer on 06/09/24.
//

import SwiftUI

struct TabViewScreen: View {
    @State private var currentTab = 0
       let tabs: [AnyView] = [AnyView(MainScreen()), AnyView(ControlScreen())]
       
       var body: some View {
           VStack(spacing: 0) {
               // Custom page indicator
        
               
               TabView(selection: $currentTab) {
                   ForEach(0..<tabs.count, id: \.self) { index in
                       tabs[index]
                           .tag(index)
                   }
               }
               .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
               .scrollIndicators(.visible, axes: .vertical)
           }
           .gesture(
               DragGesture()
                   .onEnded { value in
                       if value.translation.height > 50 {
                           withAnimation {
                               currentTab = max(0, currentTab - 1)
                           }
                       } else if value.translation.height < -50 {
                           withAnimation {
                               currentTab = min(tabs.count - 1, currentTab + 1)
                           }
                       }
                   }
           )
       }
}

#Preview {
    TabViewScreen()
}

