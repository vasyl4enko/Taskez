//
//  BacgroundView.swift
//  Taskez
//
//  Created by Oleksandr on 30.06.2023.
//

import SwiftUI

struct BacgroundView: View {
    var body: some View {
        ZStack {
            Color.background_01
            VStack {
                Circle()
                    .fill(
                        EllipticalGradient(
                            stops: [
                                Gradient.Stop(color: Color(red: 0.94, green: 0.54, blue: 0.93), location: 0.00),
                                Gradient.Stop(color: Color(red: 0.45, green: 0.41, blue: 0.89), location: 0.54),
                                Gradient.Stop(color: Color(red: 0.51, green: 0.32, blue: 0.86), location: 1.00),
                            ],
                            center: UnitPoint(x: 0.62, y: 0.39)
                            
                        ))
                    .frame(width: 310)
                    .blur(radius: 40.77423)
                    .opacity(0.1)
                    .offset(x: -120, y: -90)
                Spacer()
                Circle()
                    .fill(
                        EllipticalGradient(
                            stops: [
                                Gradient.Stop(color: Color(red: 0.94, green: 0.54, blue: 0.93), location: 0.00),
                                Gradient.Stop(color: Color(red: 0.45, green: 0.41, blue: 0.89), location: 0.54),
                                Gradient.Stop(color: Color(red: 0.51, green: 0.32, blue: 0.86), location: 1.00),
                            ],
                            center: UnitPoint(x: 0.62, y: 0.39)
                            
                        ))
                    .frame(width: 376)
                    .blur(radius: 40.77423)
                    .opacity(0.1)
                    .offset(x: 120, y: 90)

            }
        }
        .ignoresSafeArea()
    }
}

struct BacgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BacgroundView()
    }
}
