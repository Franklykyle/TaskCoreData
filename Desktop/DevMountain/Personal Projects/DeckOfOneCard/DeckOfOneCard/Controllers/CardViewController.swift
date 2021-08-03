//
//  CardViewController.swift
//  DeckOfOneCard
//
//  Created by Kyle Franklin on 8/3/21.
//

import UIKit

class CardViewController: UIViewController {
    
    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var cardNameLabel: UILabel!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func drawButtonTapped(_ sender: Any) {
        
        CardController.fetchCard { (result) in
            
            DispatchQueue.main.async {
                
                switch result {
                
                
                case .success(let card):
                    self.fetchImageAndUpdateView(with: card)
                case .failure(let error):
                    self.presentErrorToUser(localizedError: error)
                }
            }
        }
    }
    
    
    func fetchImageAndUpdateView(with card: Card) {
        
        CardController.fetchImage(for: card) { [weak self] (result) in
            
            DispatchQueue.main.async {
                
                switch result {
                
                case .success(let image):
                    self?.cardNameLabel.text = "\(card.value) of \(card.suit)"
                    self?.cardImageView.image = image
                    
                case .failure(let error):
                    self?.presentErrorToUser(localizedError: error)
                }
            }
        }
    }
}

