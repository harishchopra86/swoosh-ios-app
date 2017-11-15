//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Harish Chopra on 2017-11-15.
//  Copyright © 2017 Harish Chopra. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    @IBOutlet weak var btnNext: BorderButton!
    var player:Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }

    @IBAction func btnMensTapped(_ sender: Any) {
        selectLeaque(leagueType: "mens")
    }
    
    @IBAction func btnWomenTapped(_ sender: Any) {
        selectLeaque(leagueType: "womens")
    }
    
    @IBAction func btnCoedTapped(_ sender: Any) {
        selectLeaque(leagueType: "coed")
    }
    
    func selectLeaque(leagueType:String) {
        player.desiredLeague = leagueType
        btnNext.isEnabled = true
    }
    
    @IBAction func btnNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    
    
    
    
    
    
    
}
