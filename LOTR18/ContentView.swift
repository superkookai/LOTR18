//
//  ContentView.swift
//  LOTR18
//
//  Created by Weerawut Chaiyasomboon on 06/08/2568.
//

import SwiftUI

struct ContentView: View {
    @State private var leftAmount: String = ""
    @State private var rightAmount: String = ""
    
    var body: some View {
        ZStack {
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                
                Text("Currency Exchange")
                    .font(.system(size: 40))
                    .foregroundStyle(.white)
                
                HStack {
                    //Left Conversion
                    VStack {
                        //Currency
                        HStack {
                            Image(.copperpenny)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35)
                            
                            Text("Copper Penny")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        
                        //TextField
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    //Equal Sign
                    Image(systemName: "equal")
                        .font(.system(size: 40))
                        .foregroundStyle(.white)
                    
                    
                    //Right Conversion
                    VStack {
                        //Currency
                        HStack {
                            Text("Gold Penny")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            Image(.goldpenny)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35)
                            
                        }
                        
                        //TextField
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                    }
                }
                .padding()
                .background(Color.black.opacity(0.3))
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
