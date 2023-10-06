//
//  KeychainService.swift
//  Navigation
//
//  Created by gleb on 04/10/2023.
//

import Foundation
import KeychainAccess

class KeychainService {
    static let shared = KeychainService()
    let keychain = Keychain(service: "Realm")
}
