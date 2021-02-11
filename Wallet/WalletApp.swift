//
//  WalletApp.swift
//  Wallet
//
//  Created by Rick Brown on 11/02/2021.
//

import SwiftUI

@main
struct WalletApp: App {
  @StateObject private var wallet = Wallet()
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(wallet)
    }
  }
}

final class Wallet: ObservableObject {
  @Published var cards = cardsData
  
  var selectedCard: Card {
    cards.first(where: { $0.isSelected })!
  }
}
