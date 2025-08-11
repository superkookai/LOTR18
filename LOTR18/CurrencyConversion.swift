//
//  CurrencyConversion.swift
//  LOTR18
//
//  Created by Weerawut Chaiyasomboon on 11/08/2568.
//

import Foundation

@Observable
class CurrencyConversion {
    var leftAmount: String = ""
    var leftCurrency: Currency = .copperpenny
    var rightAmount: String = ""
    var rightCurrency: Currency = .silverpenny
}
