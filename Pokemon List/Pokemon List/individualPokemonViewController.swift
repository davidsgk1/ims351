//
//  individualPokemonViewController.swift
//  Pokemon List
//
//  Created by Keegan Davidson on 2/15/18.
//  Copyright © 2018 artiekuhn. All rights reserved.
//

import UIKit

class individualPokemonViewController: UIViewController {
    
    var pokemonIndex = 0
    
    @IBOutlet weak var pokemonName: UILabel!
    var pokemon = ["pikachu", "charmander", "squirtel", "ash","articuno"]
    var pokemonDetailsArray = ["the little yellow one", "Fire type yo", "The best starting Pokemon. You know it's true.", "Our young hero.", "If you catch him you are a Pokemon master."]

    override func viewDidLoad() {
        super.viewDidLoad()
        pokemonName.text = pokemon[pokemonIndex]
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
