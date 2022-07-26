//
//  CardView.swift
//  TipCalculator
//
//  Created by Kayla on 7/25/22.
//  Credits to John Kuris
//  Youtube Video Link: https://www.youtube.com/watch?v=fnHDbTDPu3s&t=64s

import SwiftUI

struct CardView: View {
    // initializing necessary properties
    var cardLabelText = ""
    var totalAmount = 0.0
    var subtotalAmount = 0.0
    var tipAmount = 0.0
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(cardLabelText)
                .foregroundColor(.indigo)
                .fontWeight(.black)
            ZStack {
                Rectangle()
                    .foregroundColor(.gray)
                    .cornerRadius(20)
                
                HStack {
                    Spacer()
                    Text("$ \(totalAmount, specifier: "%.2f")")
                        .foregroundColor(.white)
                        .font(.system(size: 40, weight: .black, design: .monospaced))
                        .fontWeight(.black)
                    
                    Spacer()
                    
                    Rectangle()
                        .foregroundColor(Color(red: 128/255, green: 128/255, blue: 128/255))
                        .frame(width: 1, height: 70)
                    
                    Spacer()
                    VStack(alignment: .leading, spacing: 10) {
                        VStack(alignment: .leading) {
                            Text("SUBTOTAL")
                                .font(.system(.caption, design: .rounded))
                                .fontWeight(.light)
                            Text("$ \(subtotalAmount, specifier: "%.2f")")
                                .font(.system(.body, design: .monospaced))
                                .fontWeight(.black)
                        }
                        
                        VStack(alignment: .leading) {
                            Text("TIP")
                                .font(.system(.caption, design: .rounded))
                                .fontWeight(.light)
                            Text("$ \(tipAmount, specifier: "%.2f")")
                                .font(.system(.body, design: .monospaced))
                                .fontWeight(.black)
                        }
                    }
                    .foregroundColor(.white)
                    Spacer()
                }
                .padding(5)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(cardLabelText: "PER PERSON")
            .frame(width: 300, height: 150)
    }
}
