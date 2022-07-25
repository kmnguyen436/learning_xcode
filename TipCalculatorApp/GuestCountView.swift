//
//  GuestCountView.swift
//  TipCalculator
//
//  Created by Kayla on 7/25/22.
//  Credits to John Kuris
//  Youtube Video Link: https://www.youtube.com/watch?v=fnHDbTDPu3s&t=64s

import SwiftUI

struct GuestCountView: View {
    @Binding var guestCount: Int
    
    // display number of people
    // add in a button that adds number of people by 1
    // add in a button that subtracts number of people by 1
    var body: some View {
        HStack(spacing: 20) {
            Button {
                // number of people cannot be 0 or negative
                if guestCount > 1 {
                    guestCount -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
                    .foregroundColor(.indigo)
                    .font(.system(.title, design: .rounded))
                
            }
            Text("\(guestCount)")
                .foregroundColor(.primary)
                .font(.system(size: 40, weight: .black, design: .monospaced))
            
            Button{
                guestCount += 1
            } label: {
                Image(systemName: "plus.circle")
                    .foregroundColor(.indigo)
                    .font(.system(.title, design: .rounded))
            }
        }
    }
}

struct GuestCountView_Previews: PreviewProvider {
    static var previews: some View {
        GuestCountView(guestCount: .constant(1))
    }
}
