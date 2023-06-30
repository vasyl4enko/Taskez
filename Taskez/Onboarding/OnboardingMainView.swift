//
//  OnboardingView.swift
//  Taskez
//
//  Created by Oleksandr on 27.06.2023.
//

import SwiftUI

struct OnboardingMainView: View {
    var body: some View {
        ZStack {
            Image("Onboarding_main")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack (alignment: .trailing) {
                Button(action: {
                    
                }) {
                    Image("right_arrow")
                      .renderingMode(.original)
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                      .frame(width: 20, height: 20)
                      .foregroundColor(.background_01)
                }
                .background(Rectangle()
                    .frame(width: 197, height: 197, alignment: .bottomLeading)
                    .background(LinearGradient(colors: [.colorful_4, .colorful_5], startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 0, y: 2)))
                    .foregroundColor(.clear)
                    .cornerRadius(40)
                    .rotationEffect(.degrees(45)))
            }
            
        }
    }
}

struct OnboardingMainView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingMainView()
    }
}

