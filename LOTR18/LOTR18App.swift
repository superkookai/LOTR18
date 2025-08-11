//
//  LOTR18App.swift
//  LOTR18
//
//  Created by Weerawut Chaiyasomboon on 06/08/2568.
//

import SwiftUI

@main
struct LOTR18App: App {
    @State private var currencyConversion = CurrencyConversion()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(currencyConversion)
        }
    }
}
