//
//  ViewController.swift
//  MarioCartApp
//
//  Created by Spencer on 3/6/20.
//  Copyright © 2020 Spencer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var bowser: UIImageView!
    @IBOutlet weak var mario: UIImageView!
    @IBOutlet weak var toad: UIImageView!
    @IBOutlet weak var wario: UIImageView!
    var startingPointKartView0 = CGPoint()
    @IBAction func test(_ sender: UIPanGestureRecognizer) {
        let location = sender.location(in: view)
        let kartView = sender.view!
        kartView.center = location
        
    }
    
    @IBAction func didPinchKart(_ sender: UIPinchGestureRecognizer)
    {
        let scale = sender.scale
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(scaleX: scale, y: scale)
        print("scale: \(scale)")
    }
    
    @IBAction func didRotate(_ sender: UIRotationGestureRecognizer)
    {
        let rotation = sender.rotation
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(rotationAngle: rotation)
    }
    
    @IBAction func didTapCart(_ sender: UITapGestureRecognizer)
    {
            let kartView = sender.view!
        UIView.animate(withDuration: 0.6) {
            kartView.center.x += 400
        }
    }
   
    @IBAction func didLongPress(_ sender: UILongPressGestureRecognizer)
    {
        
       print("long f")
        UIView.animate(withDuration: 0.8)
        {
            self.bowser.center = self.startingPointKartView0
            self.bowser.transform = CGAffineTransform.identity
        }
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        bowser.isUserInteractionEnabled = true
        mario.isUserInteractionEnabled = true
        toad.isUserInteractionEnabled = true
        wario.isUserInteractionEnabled = true
        background.isUserInteractionEnabled = true
        startingPointKartView0 = bowser.center
        // Do any additional setup after loading the view.
    }
  
    
    

}


