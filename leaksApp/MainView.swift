//
//  MainView.swift
//  leaks
//
//  Created by ialbuquerque on 23/06/2024.
//

import SwiftUI

struct MainView: View {
    @State var viewModel: MainViewModel
    @State var presentNames = false
    var body: some View {
        VStack {
            Text(viewModel.name ?? "")
                .bold()
            Button {
                viewModel.createViewModel()
                presentNames = true
            } label: {
                Text("Choose a name")
            }
        }
        .sheet(isPresented: $presentNames, content: {
            if let viewModel = viewModel.childViewModel {
                NavigationView {
                    ProfileView(viewModel: viewModel)
                }
            }
        })
    }
}
