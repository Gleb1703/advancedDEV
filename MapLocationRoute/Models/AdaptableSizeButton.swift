//
//  AdaptableSizeButton.swift
//  MapLocationRoute
//
//  Created by Created by gleb on 01/10/2023.
//

import Foundation
import UIKit

class AdaptableSizeButton: UIButton {
    override var intrinsicContentSize: CGSize {
        let labelSize = titleLabel?.sizeThatFits(CGSize(width: frame.size.width, height: CGFloat.greatestFiniteMagnitude)) ?? .zero
        let desiredButtonSize = CGSize(width: labelSize.width + 20, height: labelSize.height + 10)
        
        return desiredButtonSize
    }
}
