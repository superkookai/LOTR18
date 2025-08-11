//
//  SelectCurrencyView.swift
//  LOTR18
//
//  Created by Weerawut Chaiyasomboon on 10/08/2568.
//

import SwiftUI

struct SelectCurrencyView: View {
    @Environment(CurrencyConversion.self) var currencyConversion
    @Environment(\.dismiss) var dismiss
    let gridColumns: [GridItem] = [GridItem(), GridItem(), GridItem()]
    
    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                //Text
                Text("Select the Currency you are starting with:")
                    .bold()
                
                //Currency Icons
                LazyVGrid(columns: gridColumns) {
                    ForEach(Currency.allCases) { currency in
                        CurrencyIcon(currency: currency)
                            .onTapGesture {
                                currencyConversion.leftCurrency = currency
                            }
                            .overlay {
                                if currencyConversion.leftCurrency == currency {
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(lineWidth: 3)
                                }
                            }
                    }
                }
                
                //Text
                Text("Select the Currency you would like to convert to:")
                    .bold()
                    
                
                //Currency Icons
                LazyVGrid(columns: gridColumns) {
                    ForEach(Currency.allCases) { currency in
                        CurrencyIcon(currency: currency)
                            .onTapGesture {
                                currencyConversion.rightCurrency = currency
                            }
                            .overlay {
                                if currencyConversion.rightCurrency == currency {
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(lineWidth: 3)
                                }
                            }
                    }
                }
                
                //Done Button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .foregroundStyle(.white)
            }
            .multilineTextAlignment(.center)
            .padding()
        }
    }
}

#Preview {
    SelectCurrencyView()
        .environment(CurrencyConversion())
}

