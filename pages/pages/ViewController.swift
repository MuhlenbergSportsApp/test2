//
//  ViewController.swift
//  pages
//
//  Created by Kevin Hagan on 5/31/18.
//  Copyright © 2018 Kevin Hagan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Attributes
    
    var points : Int = 0
    
    var welcomeUserName : String = ""
    
    @IBOutlet weak var header: UILabel!
    
    @IBOutlet weak var pointsLabel: UILabel!
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //print(welcomeUserName)
        
        pointsLabel.text = String(points)
        welcomeLabel.text = welcomeUserName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // Actions
    
    
    @IBAction func button(_ sender: UIButton) {
        points = points + 1
        print(points)
        pointsLabel.text = String(points)
        
        //performSegue(withIdentifier: "right", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! page2
        vc.labelText = String(self.points)
    }
    
}

