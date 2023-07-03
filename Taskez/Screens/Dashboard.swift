//
//  Dashboard.swift
//  Taskez
//
//  Created by Oleksandr on 30.06.2023.
//

import SwiftUI

struct Dashboard: View {
    @State private var selectedTab: Int = 0
    var body: some View {
        NavigationStack {
            ZStack {
                BacgroundView()
                
                
                VStack () {
                    HStack {
                        Text("Hello, \nDerek Doyle 👋")
                            .padding(.top, 22)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    
                    HStack {
                        SegmentPicker(selected: $selectedTab, dataSource: [ "Overview","Productivity"])
                        Spacer()
                    }
                    
                    TabView(selection: $selectedTab) {
                        Text("Overview")
                            .foregroundColor(.colorful_5)
                            .tag(0)
                        Text("Productivity")
                            .foregroundColor(.colorful_5)
                            .tag(1)
                    }
                    .background(.clear)
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    Spacer()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Text("Dashboard")
                            .foregroundColor(.white)
                        Spacer()
                        HStack ( spacing: 34) {
                            Image("chatIcon")
                                .frame(width: 24, height: 24)
                            Circle()
                                .fill(Color.red)
                                .frame(width: 48)
                            
                        }
                    }
                    .padding(.horizontal, 24)
                }
            }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
