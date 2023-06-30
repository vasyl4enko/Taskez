//
//  AppFontTemplates.swift
//  Taskez
//
//  Created by Oleksandr on 27.06.2023.
//

import SwiftUI

struct AppFontTemplate {
    // MARK: Poppins
    static let h0 = FontTemplate(font: Font.custom(AppFont.poppinsSemiBold.rawValue, size: 60),
                                    weight: .bold,
                                    lineSpacing: 64)
    static let h1 = FontTemplate(font: Font.custom(AppFont.poppinsSemiBold.rawValue, size: 48),
                                    weight: .bold,
                                    lineSpacing: 56)
    static let h2 = FontTemplate(font: Font.custom(AppFont.poppinsSemiBold.rawValue, size: 40),
                                    weight: .bold,
                                    lineSpacing: 48)
    static let h3 = FontTemplate(font: Font.custom(AppFont.poppinsSemiBold.rawValue, size: 36),
                                    weight: .bold,
                                    lineSpacing: 40)
    static let h4 = FontTemplate(font: Font.custom(AppFont.poppinsSemiBold.rawValue, size: 32),
                                    weight: .bold,
                                    lineSpacing: 40)
    static let h5 = FontTemplate(font: Font.custom(AppFont.poppinsSemiBold.rawValue, size: 24),
                                    weight: .bold,
                                    lineSpacing: 32)
    static let h6 = FontTemplate(font: Font.custom(AppFont.poppinsSemiBold.rawValue, size: 20),
                                    weight: .bold,
                                    lineSpacing: 24)
    static let title = FontTemplate(font: Font.custom(AppFont.poppinsSemiBold.rawValue, size: 18.0),
                                    weight: .bold,
                                    lineSpacing: 24)
    // MARK: Inter
    static let title_m = FontTemplate(font: Font.custom(AppFont.interSemiBold.rawValue, size: 60),
                                    weight: .bold,
                                    lineSpacing: 24)
    static let title_s = FontTemplate(font: Font.custom(AppFont.interSemiBold.rawValue, size: 48),
                                    weight: .bold,
                                    lineSpacing: 24)
    static let button_l = FontTemplate(font: Font.custom(AppFont.interBold.rawValue, size: 40),
                                    weight: .bold,
                                    lineSpacing: 24)
    static let button_s = FontTemplate(font: Font.custom(AppFont.interBold.rawValue, size: 14),
                                    weight: .bold,
                                    lineSpacing: 24)
    static let tab = FontTemplate(font: Font.custom(AppFont.interSemiBold.rawValue, size: 32),
                                    weight: .bold,
                                    lineSpacing: 24)
    static let body_l = FontTemplate(font: Font.custom(AppFont.interMedium.rawValue, size: 24),
                                    weight: .bold,
                                    lineSpacing: 24)
    static let body_s = FontTemplate(font: Font.custom(AppFont.interMedium.rawValue, size: 20),
                                    weight: .bold,
                                    lineSpacing: 24)
    static let body_s_bold = FontTemplate(font: Font.custom(AppFont.interBold.rawValue, size: 18.0),
                                    weight: .bold,
                                    lineSpacing: 24)
    static let body_s_regular = FontTemplate(font: Font.custom(AppFont.interRegular.rawValue, size: 60),
                                    weight: .bold,
                                    lineSpacing: 20)
    static let caption_l = FontTemplate(font: Font.custom(AppFont.interMedium.rawValue, size: 48),
                                    weight: .bold,
                                    lineSpacing: 16)
    static let caption_s = FontTemplate(font: Font.custom(AppFont.interMedium.rawValue, size: 40),
                                    weight: .bold,
                                    lineSpacing: 16)
    static let chip = FontTemplate(font: Font.custom(AppFont.interBold.rawValue, size: 36),
                                    weight: .bold,
                                    lineSpacing: 16)
}
