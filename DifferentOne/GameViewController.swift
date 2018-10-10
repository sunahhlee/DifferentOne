//
//  GameViewController.swift
//  DifferentOne
//
//  Created by Sun Ah Lee on 10/4/18.
//  Copyright © 2018 Sun Ah Lee. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // view.frame.width / 4
        // view.frame.width / 2
        // view.frame.width * 3 / 4
        
        ScoreLabel.text = "HELLO"
        createCircles()
        
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            var loc = touch.location(in: view)
            print(loc.x, " ",loc.y)
        }
    }
    
    func createCircles() {
        let layer = CAShapeLayer()
        layer.path = UIBezierPath(roundedRect: CGRect(x: view.frame.width / 16 - 10, y: 120, width: 120, height: 120), cornerRadius: 25).cgPath
        layer.fillColor = UIColor.red.cgColor
        view.layer.addSublayer(layer)
        
        let layer2 = CAShapeLayer()
        layer2.path = UIBezierPath(roundedRect: CGRect(x: 3 * view.frame.width / 8 - 10, y: 120, width: 120, height: 120), cornerRadius: 25).cgPath
        layer2.fillColor = UIColor.red.cgColor
        view.layer.addSublayer(layer2)
        
        let layer3 = CAShapeLayer()
        layer3.path = UIBezierPath(roundedRect: CGRect(x: 5.5 * view.frame.width / 8 - 10, y: 120, width: 120, height: 120), cornerRadius: 25).cgPath
        layer3.fillColor = UIColor.red.cgColor
        view.layer.addSublayer(layer3)
        
        let layer4 = CAShapeLayer()
        layer4.path = UIBezierPath(roundedRect: CGRect(x: view.frame.width / 16 - 10, y:260, width: 120, height: 120), cornerRadius: 25).cgPath
        layer4.fillColor = UIColor.red.cgColor
        view.layer.addSublayer(layer4)
        
        let layer5 = CAShapeLayer()
        layer5.path = UIBezierPath(roundedRect: CGRect(x: 3 * view.frame.width / 8 - 10, y: 260, width: 120, height: 120), cornerRadius: 25).cgPath
        layer5.fillColor = UIColor.red.cgColor
        view.layer.addSublayer(layer5)
        
        let layer6 = CAShapeLayer()
        layer6.path = UIBezierPath(roundedRect: CGRect(x: 5.5 * view.frame.width / 8 - 10, y: 260, width: 120, height: 120), cornerRadius: 25).cgPath
        layer6.fillColor = UIColor.red.cgColor
        view.layer.addSublayer(layer6)
        
        let layer7 = CAShapeLayer()
        layer7.path = UIBezierPath(roundedRect: CGRect(x: view.frame.width / 16 - 10, y: 400, width: 120, height: 120), cornerRadius: 25).cgPath
        layer7.fillColor = UIColor.red.cgColor
        view.layer.addSublayer(layer7)
        
        let layer8 = CAShapeLayer()
        layer8.path = UIBezierPath(roundedRect: CGRect(x: 3 * view.frame.width / 8 - 10, y: 400, width: 120, height: 120), cornerRadius: 25).cgPath
        layer8.fillColor = UIColor.red.cgColor
        view.layer.addSublayer(layer8)
        
        let layer9 = CAShapeLayer()
        layer9.path = UIBezierPath(roundedRect: CGRect(x: 5.5 * view.frame.width / 8 - 10, y: 400, width: 120, height: 120), cornerRadius: 25).cgPath
        layer9.fillColor = UIColor.red.cgColor
        view.layer.addSublayer(layer9)
    }
    
    @IBOutlet weak var ScoreLabel: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
