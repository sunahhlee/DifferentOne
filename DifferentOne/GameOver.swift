//
//  GameOver.swift
//  DifferentOne
//
//  Created by Sun Ah Lee on 10/18/18.
//  Copyright © 2018 Sun Ah Lee. All rights reserved.
//

import UIKit


class GameOver: UIViewController {

    @IBOutlet weak var Restart: UIButton!
    @IBOutlet weak var ScoreLabel: UILabel!
    var finalScore = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        ScoreLabel.text = "SCORE : " + String(finalScore)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
