//
//  ViewController.swift
//  StarTrivia
//
//  Created by Mohammad Abu Maizer on 3/10/19.
//  Copyright © 2019 Mohammad Abu Maizer. All rights reserved.
//

import UIKit

class SelectPersonVC: UIViewController {
    var person : Person!
    var personApi = PersonApi()
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var vehichelsButton: UIButton!
    @IBOutlet weak var starShipButton: UIButton!
    @IBOutlet weak var movieButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    @IBOutlet weak var hairLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func randomClicked(_ sender: blackBGButton) {
        let random = Int.random(in: 1 ... 87)
        personApi.getRandomPersonAlamo(urlString: "\(PERSON_URL)\(random)" ) { (data) in
            if let data = data {
                let jsonDecoder = JSONDecoder()
                do {
                    let person = try jsonDecoder.decode(Person.self, from: data)
                    self.person = person
                    self.setupView(person: person)
                } catch {
                    debugPrint(error.localizedDescription)
                }
            }
        }
    }
    
    func setupView(person: Person){
        nameLabel.text = person.name
        massLabel.text = person.mass
        hairLabel.text = person.hair
        heightLabel.text = person.height
        birthLabel.text = person.birthYear
        genderLabel.text = person.gender
        homeButton.isEnabled = !person.homeworldUrl.isEmpty
        movieButton.isEnabled = !person.filmUrls.isEmpty
        starShipButton.isEnabled = !person.starshipUrls.isEmpty
        homeButton.isEnabled = !person.filmUrls.isEmpty
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if var destination = segue.destination as? PersonProtocol {
            destination.person = person
        }
    }
 }

protocol PersonProtocol {
    var person : Person! {get  set}
}
