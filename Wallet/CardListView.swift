//
//  CardListView.swift
//  Wallet
//
//  Created by Rick Brown on 11/02/2021.
//

import SwiftUI

struct CardListView: View {
  @EnvironmentObject var wallet: Wallet
  
  var HeaderView: some View {
    HStack {
      Text("Your Cards")
        .font(.title2)
        .fontWeight(.bold)
      
      Spacer()
      
      Button("Add New") {}
        .font(.callout)
        .foregroundColor(.primaryPurple)
        .padding(.trailing)
    }
  }
  
  var body: some View {
    VStack {
      HeaderView
      
      ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 10) {
          ForEach(wallet.cards.indices, id: \.self) { index in
            CardView(card: wallet.cards[index])
              .onTapGesture {
                wallet.cards.indices.forEach { index in
                  wallet.cards[index].isSelected = false
                }
                wallet.cards[index].isSelected.toggle()
              }
          }
        }
      }
    }
  }
}

struct CardListView_Previews: PreviewProvider {
  static var previews: some View {
    CardListView()
      .environmentObject(Wallet())
  }
}
