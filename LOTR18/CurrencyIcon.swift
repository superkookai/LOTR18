//
//  CurrencyIcon.swift
//  LOTR18
//
//  Created by Weerawut Chaiyasomboon on 10/08/2568.
//

import SwiftUI

struct CurrencyIcon: View {
    let currency: Currency
    
    var body: some View {
        ZStack(alignment: .bottom) {
            //Image
            Image(currency.image)
                .resizable()
                .scaledToFit()
            
            //Name
            Text(currency.name)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.brown.opacity(0.75))
        }
        .padding(3)
        .frame(width: 100, height: 100)
        .background(.brown)
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    CurrencyIcon(currency: .goldpenny)
}
