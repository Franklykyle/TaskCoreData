//
//  SongController.swift
//  playlist40
//
//  Created by Kyle Franklin on 7/19/21.
//

import Foundation

class SongController {

    
    //MARK: - CRUD Functions
    static func createSong(songTitle: String, artist: String, playlist: Playlist) {
        
        let newSong = Song(songTitle: songTitle, artist: artist)
        playlist.songs.append(newSong)
        
    }
    
    static func deleteSong(song: Song, playlist: Playlist) {
        
        guard let index = playlist.songs.firstIndex(of: song) else { return }
        playlist.songs.remove(at: index)
        
    }
    
    static func updateSong(song: Song, newSongTile: String, newArtist: String) {
        
        song.songTitle = newSongTile
        song.artist = newArtist
        
    }
}//End of class


