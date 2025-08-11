//
//  ContentView.swift
//  LOTR18
//
//  Created by Weerawut Chaiyasomboon on 06/08/2568.
//

import SwiftUI

struct ContentView: View {
    @Environment(CurrencyConversion.self) var currencyConversion
    @State private var showExchangeInfo: Bool = false
    @State private var showSelectCurrency: Bool = false
    
    var body: some View {
        @Bindable var currencyConversion = currencyConversion
        ZStack {
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                HStack {
                    //Left Conversion
                    VStack {
                        //Currency
                        Button {
                            showSelectCurrency = true
                        } label: {
                            HStack {
                                Image(currencyConversion.leftCurrency.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 33)
                                
                                Text(currencyConversion.leftCurrency.name)
                                    .font(.headline)
                                    .foregroundStyle(.white)
                            }
                            .padding(.bottom, -5)
                        }
                        
                        //TextField
                        TextField("Amount", text: $currencyConversion.leftAmount)
                            .textFieldStyle(.roundedBorder)
                        
                    }
                    
                    //Equal Sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    
                    //Right Conversion
                    VStack {
                        //Currency
                        Button {
                            showSelectCurrency = true
                        } label: {
                            HStack {
                                Text(currencyConversion.rightCurrency.name)
                                    .font(.headline)
                                    .foregroundStyle(.white)
                                
                                Image(currencyConversion.rightCurrency.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 33)
                                
                            }
                            .padding(.bottom, -5)
                        }
                        
                        //TextField
                        TextField("Amount", text: $currencyConversion.rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding()
                .background(Color.black.opacity(0.5))
                .clipShape(RoundedRectangle(cornerRadius: 5))
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        showExchangeInfo = true
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                            .padding(.trailing)
                    }
                }
            }
        }
        .sheet(isPresented: $showExchangeInfo) {
            ExchangeInfoView()
        }
        .sheet(isPresented: $showSelectCurrency) {
            SelectCurrencyView()
        }
    }
}

#Preview {
    ContentView()
        .environment(CurrencyConversion())
}
