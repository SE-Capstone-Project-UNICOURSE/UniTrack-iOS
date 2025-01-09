//
//  CardItem.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

struct CardItem: View {
    var cardItems: Cards
    var body: some View {
        //This is card item, you can modify the way it looks like from here if you wish.
        HStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 0) {
                Spacer()
                HStack(alignment: .top, spacing: 0) {
                    HStack(spacing: 0) {
                        HStack(spacing: 10) {
                            Image(Images.cardTypeIcon)
                                .renderingMode(.original)
                            Text("Platinum")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                        Text(cardItems.cardType)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white.opacity(0.8))
                    }
                }
                .padding(.bottom,  UIScreen.main.bounds.height/15.32)
                .overlay(Image(Images.cardPattern).renderingMode(.original).offset(x: 150, y: -40))
                Text(cardItems.cardNumber)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding(.bottom, 30)
                HStack(alignment: .bottom, spacing: 0) {
                    HStack(spacing: 15) {
                        VStack(alignment: .leading, spacing: 2) {
                            Text("Expiry date")
                                .font(.caption2)
                                .foregroundColor(Color.white.opacity(0.8))
                            Text(cardItems.expiryDate)
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                        }
                        VStack(alignment: .leading, spacing: 2) {
                            Text("CVV")
                                .font(.caption2)
                                .foregroundColor(Color.white.opacity(0.8))
                            Text(cardItems.CVV)
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                        Image(Images.logoVISA)
                            .renderingMode(.original)
                    }
                }
            }
            .padding(.all, 16)
            .background(cardItems.cardColor)
        }
    }
}
