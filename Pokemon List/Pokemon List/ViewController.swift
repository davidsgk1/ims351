//
//  ViewController.swift
//  Pokemon List
//
//  Created by Kuhn, Artie R Mr. on 2/13/18.
//  Copyright © 2018 artiekuhn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var pokemon = ["pikachu", "charmander", "squirtle", "ash","articuno"]
    var pokemonDesc = ["Electric", "Fire", "Water", "Trainer", "Water/Ice"]
    

    @IBOutlet weak var pokemonTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pokemonTable.delegate = self
        pokemonTable.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemon.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = pokemonTable.dequeueReusableCell(withIdentifier: "pokemonCell") as? PokemonTableViewCell
        
        cell?.pokemonName?.text? = pokemon[indexPath.row].capitalized
        cell?.pokemonType?.text? = pokemonDesc[indexPath.row].capitalized
        cell?.pokemonPhoto.image = UIImage(named: pokemon[indexPath.row])
        
        return cell!
    }
    
    
    
    override func prepare(for seque: UIStoryboardSegue, sender: Any?) {
        
        if seque.identifier == "gotoIndividualPokemon" {
            let destination = seque.destination as? individualPokemonViewController
            
            destination?.pokemonIndex = (pokemonTable.indexPathForSelectedRow?.row)!
        }
    }

}

