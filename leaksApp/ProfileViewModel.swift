//
//  ProfileViewModel.swift
//  leaks
//
//  Created by ialbuquerque on 23/06/2024.
//

import Foundation

@Observable
class ProfileViewModel {
    let updateName: () -> Void
    let names = ["peter", "john", "bob"]
    var name: String?
    
    init(name: String?, updateName: @escaping () -> Void) {
        self.name = name
        self.updateName = updateName
    }
}
