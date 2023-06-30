//
//  Extensions.swift
//  Taskez
//
//  Created by Oleksandr on 27.06.2023.
//

import SwiftUI

extension Color {
    static let background_01 = Color("background_01")
    static let background_02 = Color("background_02")
    static let colorful_1 = Color("colorful_1")
    static let colorful_2 = Color("colorful_2")
    static let colorful_3 = Color("colorful_3")
    static let colorful_4 = Color("colorful_4")
    static let colorful_5 = Color("colorful_5")
    static let colorful_6 = Color("colorful_6")
    static let colorful_7 = Color("colorful_7")
    static let primary_app = Color("primary_app")
    static let secondary_app = Color("secondary_app")
    static let borderButton = Color("border_button")
}

extension Font {
    public func italic(_ value: Bool) -> Font {
        return value ? self.italic() : self
    }
}

extension View {
    public func fontTemplate(_ template: FontTemplate) -> some View {
        modifier(FontTemplateModifier(template: template))
    }
}
