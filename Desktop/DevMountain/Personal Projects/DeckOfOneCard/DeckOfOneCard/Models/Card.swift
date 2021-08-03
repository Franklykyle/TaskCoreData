//
//  Card.swift
//  DeckOfOneCard
//
//  Created by Kyle Franklin on 8/3/21.
//

import Foundation

struct TopLevelObject: Decodable {
    
    let cards: [Card]
}

struct Card: Decodable {
    
    let value: String
    let suit: String
    let image: URL
    
}


