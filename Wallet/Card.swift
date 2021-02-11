//
//  Card.swift
//  Wallet
//
//  Created by Rick Brown on 11/02/2021.
//

import SwiftUI

struct Card {
  let income: Int
  let expense: Int
  var balance: Int {
    income - expense
  }
  let cardNumber: String
  let imageName: String
  var isSelected = false
  var backgroundColor: Color {
    isSelected ? .primaryPurple : .primaryYellow
  }
  var textColor: Color {
    isSelected ? .white : .black
  }
}
