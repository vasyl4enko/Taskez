//
//  AppFonts.swift
//  Taskez
//
//  Created by Oleksandr on 27.06.2023.
//

import SwiftUI

enum AppFont: String {
    case interBold = "Inter-Bold"
    case interRegular = "Inter-Regular"
    case interMedium = "Inter-Medium"
    case interSemiBold =  "Inter-SemiBold"
    case poppinsSemiBold = "Poppins-SemiBold"
}

public class FontTemplate {
    private var id: UUID
    public var font: Font
    public var weight: Font.Weight
    public var italic: Bool
    public init(font: Font,
                weight: Font.Weight,
                italic: Bool = false,
                lineSpacing: CGFloat = 10.0) {
        self.id = UUID()
        self.font = font
        self.weight = weight
        self.italic = italic
    }
}

struct FontTemplateModifier: ViewModifier {
    let template: FontTemplate
    init(template: FontTemplate) {
        self.template = template
    }
    func body(content: Content) -> some View {
        content
            .font(template.font
                .weight(template.weight)
                .italic(template.italic))
    }
}


