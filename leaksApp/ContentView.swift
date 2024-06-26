//
//  ContentView.swift
//  leaks
//
//  Created by ialbuquerque on 23/06/2024.
//

import SwiftUI

struct ContentView: View {
    @State var stack: [String] = []
    var body: some View {
        NavigationStack(path: $stack) {
            Button {
                stack.append("main")
            } label: {
                Text("Show profile view")
            }
            .navigationDestination(for: String.self) { name in
                MainView(viewModel: .init())
            }
        }
    }
}

#Preview {
    ContentView()
}
