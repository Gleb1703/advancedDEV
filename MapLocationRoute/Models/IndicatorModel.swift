//
//  IndicatorModel.swift
//  MapLocationRoute
//
//  Created by Created by gleb on 01/10/2023.
//

import Foundation
import JGProgressHUD

class IndicatorModel {
    
    static let loadingIndicator: JGProgressHUD = {
        let indicator = JGProgressHUD()
        indicator.textLabel.text = "pleaseWait".localized
        return indicator
    }()

}
