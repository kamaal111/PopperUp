//
//  ContentView.swift
//  Shared
//
//  Created by Kamaal M Farah on 16/01/2022.
//

import SwiftUI
import PopperUp

struct ContentView: View {
    @StateObject private var popperUpManager = PopperUpManager()

    var body: some View {
        VStack {
            Button(action: {
                popperUpManager.showPopup(
                    style: .bottom(title: "Title", type: .success, description: "Description"),
                    timeout: 3)
            }) {
                Text("Bottom popup")
            }
            Button(action: {
                popperUpManager.showPopup(
                    style: .hud(title: "Empty thing", systemImageName: "airpodspro", description: "Below thing"),
                    timeout: nil)
            }) {
                Text("Hud popup")
            }
        }
        .frame(minWidth: 300, minHeight: 300)
        .withPopperUp(popperUpManager)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
