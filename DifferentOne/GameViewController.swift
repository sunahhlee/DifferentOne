//
//  GameViewController.swift
//  DifferentOne
//
//  Created by Sun Ah Lee on 10/4/18.
//  Copyright © 2018 Sun Ah Lee. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    var timer = Timer()
    var time = 10
    
    @IBOutlet weak var TimerLabel: UILabel!
    @IBOutlet weak var ScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // view.frame.width / 4
        // view.frame.width / 2
        // view.frame.width * 3 / 4
        
        // ScoreLabel.text = "HELLO"
        createCircles()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
        // Do any additional setup after loading the view.
    }
    
    var x_1: Double = 0.0;
    var x_2: Double = 0.0;
    var y_1: Double = 0.0;
    var y_2: Double = 0.0;
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            var loc = touch.location(in: view)
            print(loc.x, " ",loc.y)
            if (x_1 <= Double(loc.x)) && (Double(loc.x) <= x_2) && (y_1 <= Double(loc.y)) && (Double(loc.y) <= y_2) {
                print("GOOD JOB")
            } else {
                print("Wrong tile!")
            }
        }
    }


    @objc func updateTimer() {
        if (time > 0) {
            time -= 1     //This will decrement(count down)the seconds.
            TimerLabel.text = String(time) + " sec left!" //This will update the label.
        }
    }
    

    func createCircles() {
        // GENERATE RANDOM NUMBER
        let randomInt = Int.random(in: 1..<10)
        //let y_first: Int = 120
        //let y_offset: Int = 120
        let layer = CAShapeLayer()
        //let totalYOffset: Int = 30
        
        var defaultColor = UIColor(red: 100.0/255.0, green: 130.0/255.0, blue: 230.0/255.0, alpha: 1.0).cgColor
        let colorOffset: Double = 15.0
        
        layer.path = UIBezierPath(roundedRect: CGRect(x: view.frame.width / 16 - 6, y: 150, width: 120, height: 120), cornerRadius: 25).cgPath
        layer.fillColor = defaultColor
        //how to obtain x, y values
        if checkIndex(layerindex: 1, random: randomInt) {
            layer.fillColor = UIColor(red: CGFloat((100.0 + colorOffset)/255.0), green: 130.0/255.0, blue: 230.0/255.0, alpha: 1.0).cgColor
            x_1 = Double(view.frame.width / 16 - 6)
            x_2 = Double(view.frame.width / 16 - 6) + 120.0
            y_1 = 150
            y_2 = 150.0 + 120.0

        }
        view.layer.addSublayer(layer)

        
        let layer2 = CAShapeLayer()
        layer2.path = UIBezierPath(roundedRect: CGRect(x: 3 * view.frame.width / 8 - 10, y: 150, width: 120, height: 120), cornerRadius: 25).cgPath
        layer2.fillColor = defaultColor
        if checkIndex(layerindex: 2, random: randomInt) {
            layer2.fillColor = UIColor(red: CGFloat((100.0 + colorOffset)/255.0), green: 130.0/255.0, blue: 230.0/255.0, alpha: 1.0).cgColor
            x_1 = Double(3 * view.frame.width / 8 - 10)
            x_2 = Double(3 * view.frame.width / 8 - 10) + 120.0
            y_1 = 150
            y_2 = 150.0 + 120.0
            
        }
        view.layer.addSublayer(layer2)

        
        let layer3 = CAShapeLayer()
        layer3.path = UIBezierPath(roundedRect: CGRect(x: 5.5 * view.frame.width / 8 - 14, y: 150, width: 120, height: 120), cornerRadius: 25).cgPath
        layer3.fillColor = defaultColor
        if checkIndex(layerindex: 3, random: randomInt) {
            layer3.fillColor = UIColor(red: CGFloat((100.0 + colorOffset)/255.0), green: 130.0/255.0, blue: 230.0/255.0, alpha: 1.0).cgColor
            x_1 = Double(5.5 * view.frame.width / 8 - 14)
            x_2 = Double(5.5 * view.frame.width / 8 - 14) + 120.0
            y_1 = 150
            y_2 = 150.0 + 120.0

        }
        view.layer.addSublayer(layer3)

        
        let layer4 = CAShapeLayer()
        layer4.path = UIBezierPath(roundedRect: CGRect(x: view.frame.width / 16 - 6, y: 275, width: 120, height: 120), cornerRadius: 25).cgPath
        layer4.fillColor = defaultColor
        if checkIndex(layerindex: 4, random: randomInt) {
            layer4.fillColor = UIColor(red: CGFloat((100.0 + colorOffset)/255.0), green: 130.0/255.0, blue: 230.0/255.0, alpha: 1.0).cgColor
            x_1 = Double(view.frame.width / 16 - 6)
            x_2 = Double(view.frame.width / 16 - 6) + 120.0
            y_1 = 275.0
            y_2 = 275.0 + 120.0

        }
        view.layer.addSublayer(layer4)

        
        let layer5 = CAShapeLayer()
        layer5.path = UIBezierPath(roundedRect: CGRect(x: 3 * view.frame.width / 8 - 10, y: 275, width: 120, height: 120), cornerRadius: 25).cgPath
        layer5.fillColor = defaultColor
        if checkIndex(layerindex: 5, random: randomInt) {
            layer5.fillColor = UIColor(red: CGFloat((100.0 + colorOffset)/255.0), green: 130.0/255.0, blue: 230.0/255.0, alpha: 1.0).cgColor
            x_1 = Double(3 * view.frame.width / 8 - 10)
            x_2 = Double(3 * view.frame.width / 8 - 10) + 120.0
            y_1 = 275.0
            y_2 = 275.0 + 120.0

        }
        view.layer.addSublayer(layer5)

        
        let layer6 = CAShapeLayer()
        layer6.path = UIBezierPath(roundedRect: CGRect(x: 5.5 * view.frame.width / 8 - 14, y: 275, width: 120, height: 120), cornerRadius: 25).cgPath
        layer6.fillColor = defaultColor
        if checkIndex(layerindex: 6, random: randomInt) {
            layer6.fillColor = UIColor(red: CGFloat((100.0 + colorOffset)/255.0), green: 130.0/255.0, blue: 230.0/255.0, alpha: 1.0).cgColor
            x_1 = Double(5.5 * view.frame.width / 8 - 14)
            x_2 = Double(5.5 * view.frame.width / 8 - 14) + 120.0
            y_1 = 275.0
            y_2 = 275.0 + 120.0

        }
        view.layer.addSublayer(layer6)

        
        let layer7 = CAShapeLayer()
        layer7.path = UIBezierPath(roundedRect: CGRect(x: view.frame.width / 16 - 6, y: 400, width: 120, height: 120), cornerRadius: 25).cgPath
        layer7.fillColor = defaultColor
        if checkIndex(layerindex: 7, random: randomInt) {
            layer7.fillColor = UIColor(red: CGFloat((100.0 + colorOffset)/255.0), green: 130.0/255.0, blue: 230.0/255.0, alpha: 1.0).cgColor
            x_1 = Double(view.frame.width / 16 - 6)
            x_2 = Double(view.frame.width / 16 - 6) + 120.0
            y_1 = 400.0
            y_2 = 400.0 + 120.0

        }
        view.layer.addSublayer(layer7)

        
        let layer8 = CAShapeLayer()
        layer8.path = UIBezierPath(roundedRect: CGRect(x: 3 * view.frame.width / 8 - 10, y: 400, width: 120, height: 120), cornerRadius: 25).cgPath
        layer8.fillColor = defaultColor
        if checkIndex(layerindex: 8, random: randomInt) {
            layer8.fillColor = UIColor(red: CGFloat((100.0 + colorOffset)/255.0), green: 130.0/255.0, blue: 230.0/255.0, alpha: 1.0).cgColor
            x_1 = Double(3 * view.frame.width / 8 - 10)
            x_2 = Double(3 * view.frame.width / 8 - 10) + 120.0
            y_1 = 400.0
            y_2 = 400.0 + 120.0
        }
        view.layer.addSublayer(layer8)

        
        let layer9 = CAShapeLayer()
        layer9.path = UIBezierPath(roundedRect: CGRect(x: 5.5 * view.frame.width / 8 - 14, y: 400, width: 120, height: 120), cornerRadius: 25).cgPath
        layer9.fillColor = defaultColor
        if checkIndex(layerindex: 9, random: randomInt) {
            layer9.fillColor = UIColor(red: CGFloat((100.0 + colorOffset)/255.0), green: 130.0/255.0, blue: 230.0/255.0, alpha: 1.0).cgColor
            x_1 = Double(5.5 * view.frame.width / 8 - 14)
            x_2 = Double(5.5 * view.frame.width / 8 - 14) + 120.0
            y_1 = 400.0
            y_2 = 400.0 + 120.0

        }
        view.layer.addSublayer(layer9)
        
    }
    
    func checkIndex(layerindex: Int, random: Int) -> Bool {
        return layerindex == random
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
