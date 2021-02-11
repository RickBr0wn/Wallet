//
//  ContentView.swift
//  Wallet
//
//  Created by Rick Brown on 11/02/2021.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ScrollView {
      VStack {
        HeaderView()
        CardListView()
        Spacer()
      }
      .padding(25)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .environmentObject(Wallet())
  }
}
