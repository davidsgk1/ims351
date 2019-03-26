//
//  individualPokemonViewController.swift
//  Pokemon List
//
//  Created by Kuhn, Artie R Mr. on 2/14/18.
//  Copyright © 2018 artiekuhn. All rights reserved.
//

import UIKit

class individualPokemonViewController: UIViewController {
    @IBOutlet weak var pokemonTitle: UILabel!
    
    var pokemonIndex = 0
    
    var pokemons = [pokemonObject]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pokemonTitle.text = pokemons[pokemonIndex].pokemonType
        
    }

}
