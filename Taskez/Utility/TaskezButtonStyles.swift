//
//  TaskezButtonStyles.swift
//  Taskez
//
//  Created by Oleksandr on 30.06.2023.
//

import Foundation
import SwiftUI

struct TaskezButton: ButtonStyle {
    var style: Styles
    enum Styles {
        case rounded
        case textPrimary
        case textWhite
        case ghost
        case ghostWhite
        case ghostPrimary
        case google
        case facebook
        case icon
        case circleAdd
        case circleAttachment
        case smallClose
        
        func foregroundColor() -> Color {
            switch self {
            case .rounded, .textWhite, .ghost, .ghostWhite, .icon, .circleAdd, .circleAttachment, .smallClose:
                return .white
            case .textPrimary, .ghostPrimary:
                return .primary_app
            case .google:
                return .green
            case .facebook:
                return .green
            }
        }
        
        func background() -> Color {
            switch self {
            case .rounded, .icon, .circleAdd, .circleAttachment, .smallClose:
                return .primary_app
            default:
                return .clear
            
            }
        }
        
        func borderColor() -> Color {
            switch self {
            case .rounded, .textPrimary, .textWhite, .icon, .circleAdd, .circleAttachment, .smallClose:
                return .clear
            case .ghost, .ghostPrimary:
                return .primary_app
            case .ghostWhite:
                return .white
            case .google, .facebook:
                return .borderButton
            }
        }
        
        func paddingVertical() -> Int {
            switch self {
                
            case .rounded, .textPrimary, .textWhite, .ghost, .ghostWhite, .ghostPrimary, .icon:
                return 12
            case .google, .facebook:
                return 16
            case .circleAdd:
                return 0
            case .circleAttachment:
                return 0
            case .smallClose:
                return 0
            }
        }
        
        func paddingHorizontal() -> Int {
            switch self {
                
            case .rounded, .textPrimary, .textWhite, .ghost, .ghostWhite, .ghostPrimary:
                return 32
            case .icon:
                return 44
            case .google, .facebook:
                return 0
            case .circleAdd:
                return 0
            case .circleAttachment:
                return 0
            case .smallClose:
                return 0
            }
        }
    }
    // find best opacity for touches
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical, 12)
            .padding(.horizontal, 32)
            .fontTemplate(AppFontTemplate.button_s)
            .foregroundColor(style.foregroundColor())
            .opacity(configuration.isPressed ? 0.4 : 1)
            .overlay {
                RoundedRectangle(cornerRadius: 24)
                    .stroke(style.borderColor(), lineWidth: 2)
            }
            .background(style.background())
            .opacity(configuration.isPressed ? 0.8 : 1)
            .cornerRadius(24)
            .shadow(color: .black.opacity(0.5), radius: 8, x: 0, y: 8)
    }
}

