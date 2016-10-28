//
//  ViewController.swift
//  Quotes App
//
//  Created by roycetanjiashing on 28/10/16.
//  Copyright © 2016 examplecompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainQuote: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    
    var quotes = ["Failure is the mother of success so don't be scared to fail!","Quote Number 2","Quote Number 3","Quote Number 4","Quote Number 5","Quote Number 6","Quote Number 7"]
    var images = [#imageLiteral(resourceName: "forest1"),#imageLiteral(resourceName: "forest2"),#imageLiteral(resourceName: "new-york"),#imageLiteral(resourceName: "singapore"),#imageLiteral(resourceName: "sky"),#imageLiteral(resourceName: "skyline"),#imageLiteral(resourceName: "waterfall")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainQuote.text = quotes[generateRandomNumber()]
    }
    
    
    func generateRandomNumber () -> Int {
        let randomNumber = arc4random_uniform(UInt32(quotes.count))
        return Int(randomNumber)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func inspire(_ sender: UIButton) {
        mainQuote.text = quotes[generateRandomNumber()]
        imageView.image = images[generateRandomNumber()]
    }
    
    

}

