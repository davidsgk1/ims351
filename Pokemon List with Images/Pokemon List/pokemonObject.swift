//
//  pokemonObject.swift
//  Pokemon List
//
//  Created by Keegan Davidson on 2/22/18.
//  Copyright © 2018 artiekuhn. All rights reserved.
//

import UIKit

class pokemonObject {
    var name:String
    var photo:UIImage
    var pokemonType:String
    
    //Init must be created with each class
    init(name:String, photo:UIImage, pokemonType:String) {
        self.name = name
        self.pokemonType = pokemonType
        self.photo = photo
    }
}
