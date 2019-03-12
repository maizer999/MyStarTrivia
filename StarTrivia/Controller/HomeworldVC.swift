//
//  HomeworldVC.swift
//  StarTrivia
//
//  Created by Mohammad Abu Maizer on 3/12/19.
//  Copyright © 2019 Mohammad Abu Maizer. All rights reserved.
//

import Foundation
import UIKit

class HomeworldVC: UIViewController , PersonProtocol{
    var person : Person!
    var personApi = PersonApi()
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var terainLabel: UILabel!
    @IBOutlet weak var populationLabel: UILabel!
    @IBOutlet weak var climateLabel: UILabel!
    
   
    override func viewDidLoad() {
        print(person.homeworldUrl)
        personApi.getRandomPersonAlamo(urlString: "\(person.homeworldUrl)" ) { (data) in
            if let data = data {
                let jsonDecoder = JSONDecoder()
                do {
                    let homeworld = try jsonDecoder.decode(Homeworld.self, from: data)
                    self.setupView(homeworld: homeworld )
                } catch {
                    debugPrint(error.localizedDescription)
                }
            }
        }
    }
    
    func setupView(homeworld: Homeworld){
        nameLabel.text = person.name
        terainLabel.text = person.mass
        populationLabel.text = person.hair
        climateLabel.text = person.height
    }
    
}
