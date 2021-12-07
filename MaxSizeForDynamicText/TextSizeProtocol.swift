//
//  TextSizeProtocol.swift
//  IntermittentFasting
//
//  Created by Doug Marttila on 12/6/21.
//

import SwiftUI

/*
To use, add the protocol to a TextModifier (or a view - but TextModifier seems better),
then add @Environment(\.sizeCategory) var sizeCategory to the modifier
then call getDeviceFontSizeSettingInt(sizeCategory: sizeCategory) from the view
it returns an int from 1 to 12 where 1 is tiny and 12 is huge
 */

protocol TextSize {
    func getDeviceFontSizeSettingInt (sizeCategory: ContentSizeCategory) -> Int
}
extension TextSize {
    func getDeviceFontSizeSettingInt (sizeCategory: ContentSizeCategory) -> Int {
        switch sizeCategory {
        case .extraSmall:
            return 1
        case .small:
            return 2
        case .medium:
            return 3
        case .large:
            return 4
        case .extraLarge:
            return 5
        case .extraExtraLarge:
            return 6
        case .extraExtraExtraLarge:
            return 7
        case .accessibilityMedium:
            return 8
        case .accessibilityLarge:
            return 9
        case .accessibilityExtraLarge:
            return 10
        case .accessibilityExtraExtraLarge:
            return 11
        case .accessibilityExtraExtraExtraLarge:
            return 12
        @unknown default:
            return 100
        }
    }
}
