//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by Sebastian Chilko on 25/08/2017.
//  Copyright © 2017 Sebix. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    var pokemon: Pokemon!
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var DefenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var evoLbl: UILabel!
    @IBOutlet weak var currEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    
    override func viewDidLoad() {
        
        pokemon.downloadPokemonDetail {
            // code here after it is downloaded from the internet
            self.updateUI()
            print("Did we arrive here?")
        }
    }
    
    func updateUI() {
        
        weightLbl.text = pokemon.weight
        heightLbl.text = pokemon.height
        DefenseLbl.text = pokemon.defense
        attackLbl.text = pokemon.attack
        evoLbl.text = pokemon.evo
    }
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
}
