//
//  Pokemon.swift
//  Pokedex
//
//  Created by Sebastian Chilko on 23/08/2017.
//  Copyright © 2017 Sebix. All rights reserved.
//

import Foundation
import Alamofire

class Pokemon {
    
    private var _name: String!
    private var _pokedexID: Int!
    private var _nametxt: String!
    private var _mainImg: String!
    private var _description: String!
    private var _type: String!
    private var _defense: String!
    private var _height: String!
    private var _weight: String!
    private var _attack: String!
    private var _evo: String!
    private var _currEvoImg: String!
    private var _nextEvoImg: String!
    private var _pokemonURL: String!

    var name: String {
        if _name == nil {
            
            _name = "?"
        }
        return _name
    }
    var pokedexID: Int {
        if _pokedexID == nil {
            
            _pokedexID = 0
        }
        return _pokedexID
    }
    var nametxt: String {
        if _nametxt == nil {
            
            _nametxt = "?"
        }
        return _nametxt
    }
    var main: String {
        if _mainImg == nil {
            
            _mainImg = "?"
        }
        return _mainImg
    }
    var description: String {
        if _description == nil {
            
            _description = "?"
        }
        return _description
    }
    var type: String {
        if _type == nil {
            
            _type = "?"
        }
        return _type
    }
    var defense: String {
        if _defense == nil {
            
            _defense = "?"
        }
        return _defense
    }
    var height: String {
        if _height == nil {
            
            _height = "?"
        }
        return _height
    }
    var weight: String {
        if _weight == nil {
            
            _weight = "?"
        }
        return _weight
    }
    var attack: String {
        if _attack == nil {
            
            _attack = "?"
        }
        return _attack
    }
    var evo: String {
        if _evo == nil {
            
            _evo = "?"
        }
        return _evo
    }
    var currEvoImg: String {
        if _currEvoImg == nil {
            
            _currEvoImg = "?"
        }
        return _currEvoImg
    }
    var nextEvoImg: String {
        if _nextEvoImg == nil {
            
            _nextEvoImg = "?"
        }
        return _nextEvoImg
    }
    var pokemonURL: String {
        if _pokemonURL == nil {
            
            _pokemonURL = "?"
        }
        return _pokemonURL
    }
    
    
    init(name: String, pokedexID: Int) {
        
        self._name = name
        self._pokedexID = pokedexID
        self._pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(self.pokedexID)/"
    }
    
    func downloadPokemonDetail(completed: @escaping DownloadComplete) {
        
        Alamofire.request(_pokemonURL).responseJSON  { (response) in
            
            if let dict = response.result.value as? Dictionary<String, AnyObject> {
                
                if let weight = dict["weight"] as? String {
                    self._weight = weight
                }
                
                if let height = dict["height"] as? String {
                    self._height = height
                }
                
                if let attack = dict["attack"] as? Int {
                    self._attack = "\(attack)"
                }
                
                if let defense = dict["defense"] as? Int {
                    self._defense = "\(defense)"
                }
                
                print(self._defense)
                print(self._height)
                print(self._weight)
                print(self._attack)
            }
            completed()
        }
    }
}

