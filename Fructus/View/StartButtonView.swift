//
//  StartButtonView.swift
//  Fructus
//
//  Created by Matheus Xavier on 29/07/23.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            withAnimation {
                isOnboarding = false
            }
        }) {
          HStack(spacing: 8) {
            Text("Start")
            
            Image(systemName: "arrow.right.circle")
              .imageScale(.large)
          }
          .padding(.horizontal, 16)
          .padding(.vertical, 10)
          .background(
            Capsule().strokeBorder(Color.white, lineWidth: 1.25)
          )
        } //: BUTTON
        .accentColor(Color.white)
      }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
