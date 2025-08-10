//
//  ExchangeInfoView.swift
//  LOTR18
//
//  Created by Weerawut Chaiyasomboon on 10/08/2568.
//

import SwiftUI

struct ExchangeInfoView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.brown
                .ignoresSafeArea()
            
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                    .padding(.bottom)
                
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding(.bottom)
                    
                
                //Exchange Rates
                ExchangeRate(fromCoinImage: .goldpiece, toCoinImage: .goldpenny, fromText: "1 Gold Piece", toText: "4 Gold Pennies")
                
                ExchangeRate(fromCoinImage: .goldpenny, toCoinImage: .silverpiece, fromText: "1 Gold Penny", toText: "4 Silver Pieces")
                
                ExchangeRate(fromCoinImage: .silverpiece, toCoinImage: .silverpenny, fromText: "1 Silver Piece", toText: "4 Silver Pennies")
                
                ExchangeRate(fromCoinImage: .silverpenny, toCoinImage: .copperpenny, fromText: "1 Silver Penny", toText: "100 Copper Pennies")
                
                
                
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .foregroundStyle(.white)
                .padding(.top)

            }
            .foregroundStyle(.black)
            .padding()
        }
    }
}

#Preview {
    ExchangeInfoView()
}

struct ExchangeRate: View {
    let fromCoinImage: ImageResource
    let toCoinImage: ImageResource
    let fromText: String
    let toText: String
    
    var body: some View {
        HStack {
            Image(fromCoinImage)
                .resizable()
                .scaledToFit()
                .frame(width: 33)
            
            Text("\(fromText) = \(toText)")
            
            Image(toCoinImage)
                .resizable()
                .scaledToFit()
                .frame(width: 33)
        }
    }
}

#Preview("ExchangeRate view", body: {
    ZStack {
        Image(.parchment)
            .resizable()
            .ignoresSafeArea()
            .background(.brown)
        
        ExchangeRate(fromCoinImage: .goldpiece, toCoinImage: .goldpenny, fromText: "1 Gold Piece", toText: "4 Gold Pennies")
    }
})
