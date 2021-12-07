//
//  TextModifiers.swift
//  IntermittentFasting
//
//  Created by Doug Marttila on 11/8/21.
//

import SwiftUI

struct TitleMaxSizeAcessibleMedium: ViewModifier, TextSize {
    @Environment(\.sizeCategory) var sizeCategory
    func body(content: Content) -> some View {
        content
            .foregroundColor(.red)
            .multilineTextAlignment(.center)
            .font(getDeviceFontSizeSettingInt(sizeCategory: sizeCategory) > 8 ?
                    .system(size: 40.0) : .title)
            .lineLimit(nil)
            .fixedSize(horizontal: false, vertical: true)
    }
}

extension Text {
    func textStyle<Style: ViewModifier>(_ style: Style) -> some View {
        ModifiedContent(content: self, modifier: style)
    }
}


