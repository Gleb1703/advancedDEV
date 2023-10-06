//
//  AllStrings.swift
//  MapLocationRoute
//
//  Created by Created by gleb on 01/10/2023.

import Foundation

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}
