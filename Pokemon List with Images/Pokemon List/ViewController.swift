//
//  ViewController.swift
//  Pokemon List
//
//  Created by Kuhn, Artie R Mr. on 2/13/18.
//  Copyright © 2018 artiekuhn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var pokemons = [pokemonObject]()

    @IBOutlet weak var pokemonTable: UITableView!
    
    func loadPokemons() {
        
        let pikachuPhoto = UIImage(named: "Pikachu")
        let pikachuObject = pokemonObject(name: "Pikachu", photo: pikachuPhoto!, pokemonType: "Electric")
        
        let ashPhoto = UIImage(named: "Ash")
        let ashObject = pokemonObject(name: "Ash Ketchum", photo: ashPhoto!, pokemonType: "Trainer")
        
        let charmanderPhoto = UIImage(named: "Charmander")
        let charmanderObject = pokemonObject(name: "Charmander", photo: charmanderPhoto!, pokemonType: "Fire")
        
        pokemons += [pikachuObject, ashObject, charmanderObject]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pokemonTable.delegate = self
        pokemonTable.dataSource = self
        
        loadPokemons()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = pokemonTable.dequeueReusableCell(withIdentifier: "pokemonCell") as? pokemonTableCell
        
        cell?.pokemonLabel?.text = pokemons[indexPath.row].name
        cell?.pokemonImage.image = pokemons[indexPath.row].photo
        
        return cell!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "gotoIndividualPokemon" {
            let destination = segue.destination as? individualPokemonViewController
            
            destination?.pokemonIndex = (pokemonTable.indexPathForSelectedRow?.row)!
            destination?.pokemons = pokemons
        }
    }
    
}

class pokemonTableCell: UITableViewCell {
    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var pokemonLabel: UILabel!
}


