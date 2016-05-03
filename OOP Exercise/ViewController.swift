//
//  ViewController.swift
//  OOP Exercise
//
//  Created by Sean Perez on 4/17/16.
//  Copyright © 2016 Awsome. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var player1HpLbl: UILabel!
    @IBOutlet weak var player2HpLbl: UILabel!
    @IBOutlet weak var player1AttackLbl: UILabel!
    @IBOutlet weak var player2AttackLbl: UILabel!
    @IBOutlet weak var player2AttackImg: UIButton!
    @IBOutlet weak var player1AttackImg: UIButton!
    @IBOutlet weak var statusLbl: UILabel!
    @IBOutlet weak var cavemanImg: UIImageView!
    @IBOutlet weak var gladiatorImg: UIImageView!
    @IBOutlet weak var resetLbl: UIButton!
    
    @IBAction func resetButton(sender: AnyObject) {
        player1AttackImg.hidden = false
        player2AttackImg.hidden = false
        player1AttackLbl.hidden = false
        player2AttackLbl.hidden = false
        statusLbl.text = ""
        cavemanImg.hidden = false
        gladiatorImg.hidden = false
        resetLbl.hidden = true
        player2HpLbl.text = "\(150) HP"
        player1HpLbl.text = "\(100) HP"
        player2HpLbl.hidden = false
        player1HpLbl.hidden = false
        player2.hp = 150
        player1.hp = 100
        
        
    }
    
    
    @IBAction func player2AttackBtn(sender: AnyObject) {
        player1.performAttack(player2.attackPwr)
        player1HpLbl.text = "\(player1.hp) HP"
        statusLbl.text = "Player 2 has hit you for \(player2.attackPwr) HP"
        if !player1.isAlive {
            player1IsDead()
            statusLbl.text = "Gladiator has Won"
            player1HpLbl.hidden = true
            resetLbl.hidden = false
        }
        
    }
    
    @IBAction func player1AttackBtn(sender: AnyObject) {
        player2.performAttack(player1.attackPwr)
        player2HpLbl.text = "\(player2.hp)"
        statusLbl.text = "Player 1 has hit you for \(player1.attackPwr) HP"
        if !player2.isAlive {
            player2IsDead()
            statusLbl.text = "Caveman Warrior has won"
            player2HpLbl.hidden = true
            resetLbl.hidden = false
        }
    }
    
    var player1: Character!
    var player2: Character!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        player1 = Character(name: "Caveman Warrior", hp: 100, attackPwr: 15)
        player1HpLbl.text = "\(player1.hp)"
        player2 = Character(name: "Gladiator", hp: 150, attackPwr: 20)
        player2HpLbl.text = "\(player2.hp)"
    }
    
    func player1IsDead() {
        cavemanImg.hidden = true
        player1AttackImg.hidden = true
        player1AttackLbl.hidden = true
    }
    
    func player2IsDead() {
        gladiatorImg.hidden = true
        player2AttackImg.hidden = true
        player2AttackLbl.hidden = true
    }
}





