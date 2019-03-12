import UIKit

let BLACK_BG = UIColor.black.withAlphaComponent(0.6).cgColor

let URL_BASE = "https://swapi.co/api/"
let PERSON_URL = URL_BASE + "people/"
let PLANETS_URL = URL_BASE + "planets/3/"


typealias PersonResponseCompletion = (Person?) -> Void
//typealias HomeworldResponseCompletion = (Homeworld?) -> Void
//typealias VehicleResponseCompletion = (Vehicle?) -> Void
//typealias StarshipResponseCompletion = (Starship?) -> Void
//typealias FilmResponseCompletion = (Film?) -> Void
