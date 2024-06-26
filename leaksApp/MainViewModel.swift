//
//  MainViewModel.swift
//  leaks
//
//  Created by ialbuquerque on 23/06/2024.
//

import Foundation

@Observable
class MainViewModel {
    var name: String?
    var childViewModel: ProfileViewModel?
    
    init(name: String? = nil) {
        self.name = name
    }
    func update(name: String) {
        self.name = name
    }
    
    func createViewModel() {
        self.childViewModel = .init(name: name, updateName: {
            self.update(name: self.childViewModel?.name ?? "")
        })
    }
}
