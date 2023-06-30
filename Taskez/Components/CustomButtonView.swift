//
//  CustomButtonView.swift
//  Taskez
//
//  Created by Oleksandr on 30.06.2023.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        VStack {
            // MARK: - Rounded
        
            Button {
                
            } label: {
                Text("Text")
            }
            .buttonStyle(.borderedProminent)
            Button {} label: {
                Text("Add Member")
            }
            .buttonStyle(TaskezButton(style: .rounded))
            
            // MARK: - Text Primary

            Button {} label: {
                Text("Add Member")
            }
            .buttonStyle(TaskezButton(style: .textPrimary))

            // MARK: - Text White
            
            Button {} label: {
                Text("Add Member")
            }
            .buttonStyle(TaskezButton(style: .textWhite))


            // MARK: - Ghost
            
            Button {} label: {
                Text("Add Member")
            }
            .buttonStyle(TaskezButton(style: .ghost))
            
            // MARK: - Ghost White
            
            Button {} label: {
                Text("Add Member")
            }
            .buttonStyle(TaskezButton(style: .ghostWhite))

            // MARK: - Ghost Primary
            
            Button {} label: {
                Text("Add Member")
            }
            .buttonStyle(TaskezButton(style: .ghostPrimary))

        }
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.green
                .opacity(0.55)
                .ignoresSafeArea()
            CustomButtonView()
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}


