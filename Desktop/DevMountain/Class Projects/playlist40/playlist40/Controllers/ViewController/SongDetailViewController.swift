//
//  SongDetailViewController.swift
//  playlist40
//
//  Created by Kyle Franklin on 7/20/21.
//

import UIKit

class SongDetailViewController: UIViewController {
    @IBOutlet weak var artisiTextField: UITextField!
    @IBOutlet weak var sontTitleTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        
    }
    var song: Song?
    var playlist: Playlist?
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        
        guard let songTitle = sontTitleTextField.text, !songTitle.isEmpty,
              let artist = artisiTextField.text, !artist.isEmpty,
              let playlist = playlist else { return }
        
        if let song = song {
            songController.updateSong(song
            
        } else {
            
            
        }
    }
    
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        sontTitleTextField.text = " "
        artisiTextField.text = " "
    }
    
    func updateViews() {
        guard let song = song else { return }
        sontTitleTextField.text = song.songTitle
        artisiTextField.text = song.artist
    }
}
