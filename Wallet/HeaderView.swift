//
//  HeaderView.swift
//  Wallet
//
//  Created by Rick Brown on 11/02/2021.
//

import SwiftUI

struct HeaderView: View {
  var body: some View {
    HStack {
      VStack(alignment: .leading) {
        Text("Good Morning")
          .font(.callout)
          .foregroundColor(Color(.systemGray3))
        
        Text("Kitty Hansen")
          .font(.title)
          .fontWeight(.bold)
      }
      
      Spacer()
      
      Image("avatar")
        .resizable()
        .frame(width: 50, height: 50, alignment: .center)
        .cornerRadius(10)
    }
  }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
