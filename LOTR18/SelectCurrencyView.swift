//
//  SelectCurrencyView.swift
//  LOTR18
//
//  Created by Weerawut Chaiyasomboon on 10/08/2568.
//

import SwiftUI

enum Currency: Identifiable, CaseIterable {
    case goldpiece
    case goldpenny
    case silverpiece
    case silverpenny
    case copperpenny
    
    var id: UUID { UUID() }
    
    var image: ImageResource {
        switch self {
        case .goldpiece: .goldpiece
        case .goldpenny: .goldpenny
        case .silverpiece: .silverpiece
        case .silverpenny: .silverpenny
        case .copperpenny: .copperpenny
        }
    }
    
    var name: String {
        switch self {
        case .goldpiece: "Gold Piece"
        case .goldpenny: "Gold Penny"
        case .silverpiece: "Silver Piece"
        case .silverpenny: "Silver Penny"
        case .copperpenny: "Copper Penny"
        }
    }
}

struct SelectCurrencyView: View {
    @Environment(\.dismiss) var dismiss
    
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
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(Currency.allCases) { currency in
                        CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                    }
                }
                
                //Text
                Text("Select the Currency you would like to convert to:")
                    .bold()
                    
                
                //Currency Icons
                
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
}

