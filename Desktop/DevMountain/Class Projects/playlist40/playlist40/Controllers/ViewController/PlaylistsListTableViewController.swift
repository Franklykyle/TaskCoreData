//
//  PlaylistsListTableViewController.swift
//  playlist40
//
//  Created by Kyle Franklin on 7/20/21.
//

import UIKit

class PlaylistsListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func addPlaylistButtonTapped(_ sender: Any) {
        presentNewPlaylistAlert()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playlistCell", for: indexPath)


        return cell
    }
    

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    

    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            
            
            func presentNewPlaylistAlert() {
                
                let alert = UIAlertController(title: "New Playlist", message: "enter new playlist name", preferredStyle: .alert)
                
                alert.addTextField { nameTextField in
                    nameTextField.placeholder = "playlist name..."
                    
                }
            }
        
            
            func
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    

}
