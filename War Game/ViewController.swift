//
//  ViewController.swift
//  War Game
//
//  Created by Brasilta on 11/05/17.
//  Copyright © 2017 Brasilta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImageview: UIImageView!
    @IBOutlet weak var rightScorelabel: UILabel!
    var rightscore=0
    
    @IBOutlet weak var leftImageview: UIImageView!
    @IBOutlet weak var leftScorelabel: UILabel!
    var leftscore=0
    
    let cardname=["card2","card3","card4","card5","card6","card7","card8","card9","card10","jack","queen","king","ace"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        //Randomize left number from 0 to 12
        let  leftnumber = Int(arc4random_uniform(13))
        
        //Set the left image
        leftImageview.image=UIImage(named: cardname[leftnumber])
        
        //Randomize right number from 0 to 12
        let rightNumber = Int(arc4random_uniform(13))
        
        //Set the right image
        rightImageview.image=UIImage(named: cardname[rightNumber])
    
        //Compare card numbers
        if leftnumber > rightNumber
        {
            //Left card wins
            
            //Increment the score
            leftscore+=1
            
            //Update the label
            leftScorelabel.text = String(leftscore)
        }
        else if leftnumber == rightNumber
        {
            //It's a tie
        }
        else
        {
            //Right card wins
            
            //Increment the score
            rightscore+=1
            
            //Update the label
            rightScorelabel.text=String(rightscore)
        }
    
    }

}

