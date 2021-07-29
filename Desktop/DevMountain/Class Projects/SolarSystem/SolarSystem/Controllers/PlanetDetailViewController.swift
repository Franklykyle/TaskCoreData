//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Kyle Franklin on 7/15/21.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var planetMaxDistanceFromSunLabel: UILabel!
    
    var planet: Planet?

    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    @IBOutlet weak var dayLengthInEarthDayLabel: UILabel!
    
    // MARK: - Table view data source

    func updatePlanetDetailsView() {
        guard let planet = planet else { return }
        
        planetNameLabel.text = planet.planetName
        planetImageView.image = UIImage(named: planet.planetImageName)
        planetDiameterLabel.text = "\(planet.planetDiameter) KM"
        planetMaxDistanceFromSunLabel.text = "\(planet.maxMillionKMsFromSun) 10^6km"
        dayLengthInEarthDaysLabel.text = "\(planet.planetDayLength) Days"
        
    }
    
}
