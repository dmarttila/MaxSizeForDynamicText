//
//  ContentView.swift
//  MaxSizeForDynamicText
//
//  Created by Doug Marttila on 12/7/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .textStyle(TitleMaxSizeAcessibleMedium())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().environment(\.sizeCategory, .accessibilityMedium)
        ContentView().environment(\.sizeCategory, .accessibilityLarge)
        ContentView().environment(\.sizeCategory, .accessibilityExtraLarge)
    }
}
