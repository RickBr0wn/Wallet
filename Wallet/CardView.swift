//
//  CardView.swift
//  Wallet
//
//  Created by Rick Brown on 11/02/2021.
//

import SwiftUI

struct CardView: View {
  let card: Card
  
  var body: some View {
    VStack {
      HStack {
        Spacer()
        Image(card.imageName)
      }
      .padding(.horizontal, 10)
      .padding(.top, 5)
      
      Spacer()
      
      Text("$\(card.balance)")
        .foregroundColor(card.textColor)
        .fontWeight(.bold)
      
      Text("\(card.cardNumber)")
    }
    .padding(.vertical, 10)
    .background(card.backgroundColor)
    .cornerRadius(10)
    .frame(width: 210, height: 150)
  }
}

struct CardView_Previews: PreviewProvider {
  static var previews: some View {
    CardListView()
      .environmentObject(Wallet())
  }
}
