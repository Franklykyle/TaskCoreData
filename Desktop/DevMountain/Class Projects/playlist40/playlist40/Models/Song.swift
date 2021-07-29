//
//  Song.swift
//  playlist40
//
//  Created by Kyle Franklin on 7/19/21.
//

import Foundation

class Song: Codable {
    
    let songTitle: String
    let artist: String
    let uuid: String
    let date: Date
   
    
    
    init(songTitle: String, artist: String, uuid: String = UUID().uuidString, date: Date = Date() {
        self.songTitle = songTitle
        self.artist = artist
        self.uuid = uuid
        self.date = date

        
    }
    
}//End of class

//MARK: - Extensions
extension Song: Equatable {
    static func == (lhs: Song, rhs: Song) -> Bool {
        return lhs.uuid == rhs.uuid
    }
    
    
}//End of extension
