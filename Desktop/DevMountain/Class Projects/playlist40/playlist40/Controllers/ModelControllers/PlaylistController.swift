//
//  PlaylistController.swift
//  playlist40
//
//  Created by Kyle Franklin on 7/20/21.
//

import Foundation

class PlaylistController {
    //MARK: - Properties
    static let sharedInstance = PlaylistController()
    var playlists: [Playlist] = []
    
    //MARK: - Function
    func createPlaylist(name: String) {
        
        let newPlaylist = Playlist(name: name)
        playlists.append(newPlaylist)
        
    }
    func deletePlaylist(playlist: Playlist) {
        
        guard let index = playlists.firstIndex(of: playlist) else {return}
        playlists.remove(at: index)
    }
    
    
    //MARK: - Presistence
}

func createPersistenceStore() -> URL {
        let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let fileURL = url[0].appendingPathComponent("Playlists.json")
        return fileURL
    }
    
    func saveToPersistenceStore() {
        do {
            let data = try JSONEncoder().encode(playlists)
            try data.write(to: createPersistenceStore())
        } catch {
            print("Error in \(#function) : \(error.localizedDescription) \n---\n \(error)")
        }
    }
    
    func loadFromPersistenceStore() {
        do {
            let data = try Data(contentsOf: createPersistenceStore())
            playlists = try JSONDecoder().decode([Playlist].self, from: data)
        } catch {
            print("Error in \(#function) : \(error.localizedDescription) \n---\n \(error)")
        }
    }



