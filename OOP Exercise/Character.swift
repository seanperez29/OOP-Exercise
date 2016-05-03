//
//  Character.swift
//  OOP Exercise
//
//  Created by Sean Perez on 4/17/16.
//  Copyright © 2016 Awsome. All rights reserved.
//

import Foundation

class Character {
    
    private var _name: String
    var hp: Int
    private var _attackPwr: Int
    
    var name: String {
        get {
            return _name
        }
    }

    
    var attackPwr: Int {
        get {
            return _attackPwr
        }
    }
    
    init(name: String, hp: Int, attackPwr: Int) {
        self._name = name
        self.hp = hp
        self._attackPwr = attackPwr
    }
    
    func performAttack(attackPwr: Int) {
        hp -= attackPwr
    }
    
    var isAlive: Bool {
        if hp <= 0 {
            return false
        } else {
            return true
        }
    }
    
}