//
//  ContentView.swift
//  Fructus
//
//  Created by Matheus Xavier on 29/07/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
              ForEach(fruits.shuffled()) { fruit in
                NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                  FruitRowView(fruit: fruit)
                    .padding(.vertical, 4)
                }
              }
            }
            .listRowSeparator(.hidden)
            .navigationTitle("Fruits")
            .navigationBarItems(
              trailing:
                Button(action: {
                  isShowingSettings = true
                }) {
                  Image(systemName: "slider.horizontal.3")
                } //: BUTTON
                .sheet(isPresented: $isShowingSettings) {
                  SettingsView()
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
