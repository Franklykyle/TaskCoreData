//
//  Playlist.swift
//  playlist40
//
//  Created by Kyle Franklin on 7/20/21.
//

import Foundation

class Playlist: Codable {
    
    let name: String
    var songs: [Song]
    let uuid: String
    
    init(name: String, songs: [Song] = [], uuid: String = UUID().uuidString) {
        self.name = name
        self.songs = songs
        self.uuid = uuid
    }
    
}
//MARK: - Extension

extension Playlist: Equatable {
    static func == (lhs: Playlist, rhs: Playlist) -> Bool {
        return lhs.uuid == rhs.uuid
    }
    
    
}
