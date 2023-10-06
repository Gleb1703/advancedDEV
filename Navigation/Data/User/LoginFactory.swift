//
//  LoginFactory.swift
//  Navigation
//
//  Created by gleb on 04/10/2023.
//

import Foundation

protocol LoginFactory {
    
    func makeLoginInspector() -> LoginInspector
}

struct MyLoginFactory: LoginFactory {
    
    func makeLoginInspector() -> LoginInspector {
        LoginInspector()
    }
}
