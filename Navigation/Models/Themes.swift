//
//  Themes.swift
//  Navigation
//
//  Created by Created by gleb on 02/10/2023.
//

import Foundation
import UIKit

class Themes {
    
    static var textColor = UIColor.createColor(lightMode: .black, darkMode: .white)
    static var textColorInversed = UIColor.createColor(lightMode: .white, darkMode: .black)
    static var backgroundColor = UIColor.createColor(lightMode: .white, darkMode: .systemGray6)
    static var yellowColor = UIColor.createColor(lightMode: .yellow, darkMode: .systemYellow)
    static var greenColor = UIColor.createColor(lightMode: .green, darkMode: .systemGreen)
    static var orangeColor = UIColor.createColor(lightMode: .orange, darkMode: .systemOrange)
    static var blueColor = UIColor.createColor(lightMode: .systemCyan, darkMode: .systemBlue)
    static var brownColor = UIColor.createColor(lightMode: .brown, darkMode: .systemBrown)
    static var grayColor = UIColor.createColor(lightMode: .gray, darkMode: .lightGray)
    
}

extension UIColor {
    static func createColor(lightMode: UIColor, darkMode: UIColor) -> UIColor {
        guard #available(iOS 13.0, *) else {
            return lightMode
        }
        return UIColor { traitCollection in
            return traitCollection.userInterfaceStyle == .light ? lightMode : darkMode
        }
    }
}
