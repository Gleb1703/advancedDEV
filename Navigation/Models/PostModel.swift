//
//  PostModel.swift
//  Navigation
//
//  Created by Created by gleb on 02/10/2023.
//

import UIKit

struct PostModel {
    let author: String
    let description: String
    let image: String
    var likes: Int
    var views: Int
    var isFavorite: Bool
}

extension PostModel {
    
    static func make() -> [PostModel] {
        [
            PostModel(
                author: "Steve",
                description: "The iPhone (retrospectively referred to unofficially as the iPhone 2G, iPhone 1 or original iPhone) is the first iPhone model and the first smartphone designed and marketed by Apple Inc. After years of rumors and speculation, it was officially announced on January 9, 2007, and it was released in the United States on June 29, 2007.",
                image: "iphone2g",
                likes: 12,
                views: 44,
                isFavorite: false
            ),
            PostModel(
                author: "Steve Jobs",
                description: "The iPhone 3G (also known as iPhone 2) is a smartphone designed and marketed by Apple Inc.; it is the second generation of iPhone, successor to the original iPhone, and was introduced on June 9, 2008, at the WWDC 2008 at the Moscone Center in San Francisco, United States.",
                image: "iphone3",
                likes: 18,
                views: 128,
                isFavorite: false
            ),
            PostModel(
                author: "Tim",
                description: "The iPhone 4 is a smartphone that was designed and marketed by Apple Inc. It is the fourth generation of the iPhone lineup, succeeding the iPhone 3GS and preceding the 4S. Following a number of notable leaks, the iPhone 4 was first unveiled on June 7, 2010, at Apple's Worldwide Developers Conference in San Francisco, and was released on June 24, 2010, in the United States, United Kingdom, France, Germany, and Japan. The iPhone 4 introduced a new hardware design to the iPhone family, which Apple's CEO Steve Jobs touted as the thinnest smartphone in the world at the time; it consisted of a stainless steel frame which doubled as an antenna, with internal components situated between two panels of aluminosilicate glass.",
                image: "iphone4",
                likes: 33,
                views: 216,
                isFavorite: false
            ),
            PostModel(
                author: "Craig",
                description: "Steve Jobs introduced the MacBook Air during Apple's keynote address at the 2008 Macworld conference on January 15, 2008. The first generation MacBook Air was a 13.3 model, initially promoted as the world's thinnest notebook at 1.9 cm.",
                image: "macbookair",
                likes: 99,
                views: 514,
                isFavorite: false
            )
        ]
    }
}
