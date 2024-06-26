//
//  ProfileView.swift
//  leaks
//
//  Created by ialbuquerque on 23/06/2024.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.dismiss) var dismiss
    
    @State var viewModel: ProfileViewModel
    var body: some View {
        VStack {
            Text("SelectedName: \(viewModel.name ?? "")")
            ForEach(viewModel.names, id: \.self) { name in
                Button {
                    viewModel.name = name
                } label: {
                    Text(name)
                        .bold()
                }
            }
        }
        .toolbar(content: {
            ToolbarItem(placement: .cancellationAction) {
                Button {
                    dismiss()
                } label: {
                    Text("Cancel")
                }
            }
            
            ToolbarItem(placement: .confirmationAction) {
                Button {
                    viewModel.updateName()
                    dismiss()
                } label: {
                    Text("Done")
                }
            }
        })
    }
}
