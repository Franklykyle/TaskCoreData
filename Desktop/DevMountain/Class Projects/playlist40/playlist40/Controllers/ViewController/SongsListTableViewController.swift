//
//  SongsListTableViewController.swift
//  playlist40
//
//  Created by Kyle Franklin on 7/19/21.
//

import UIKit

class SongsListTableViewController: UITableViewController {

    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear()
    }
    
    var playlist: Playlist?
    
    //MARK: - Actions
    @IBAction func addSongButtonTapped(_ sender: Any) {
        presentAddSongAlert()
    }
    

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playlist?.songs.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "songCell", for: indexPath)

        guard let playlist = playlist else { return cell}
        
        let song = playlist.songs[indexPath.row]
        
        cell.textLabel?.text = song.songTitle
        cell.detailTextLabel?.text = song.artist
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                
                guard let playlist = playlist else { return }
                let songToDelete = playlist.songs[indexPath.row]
                SongController.deleteSong(song: songToDelete, playlist: playlist)
                
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        }
    
        //MARK: - Methods
    func presentAddSongAlert() {
        
        let alert = UIAlertController(title: "Add Song", message: "wubba dub dub", preferredStyle: .alert)
        
        alert.addTextField { songNameTextField in
            songNameTextField.placeholder = "song name..."
        }
        
        alert.addTextField { artistTextField in
            artistTextField.placeholder = "artist..."
            
        }
        
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        
        let addAction = UIAlertAction(title: "add", style: .default) { _ in
            
            guard let songName = alert.textFields![0].text,
                  let artist = alert.textFields![1].text,
                  let playlist = self.playlist else { return }
            
            SongController.createSong(songTitle: songName, artist: artist, playlist: playlist)
        }
        
        alert.addAction(cancelAction)
        alert.addAction(addAction)
        
        present(alert, animated: true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSongDetailVC" {
            guard let indexPath = tableView.indexPathForRow,
                  let destinationVC = segue.destination as? SongDetailViewController,
                  let playlist = self.playlist else { return }
            
            let songToSend = playlist.songs[indexPath.row]
            destinationVC.song = songToSend
            destinationVC.playlist = playlist
        }
    }
    
}//End of class
