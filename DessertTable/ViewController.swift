//
//  ViewController.swift
//  DessertTable
//
//  Created by Yan Malinovsky on 25.11.16.
//  Copyright © 2016 Yan Malinovsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var textLabel: UILabel!
    
    @IBOutlet var textDescription: UITextView!
    
    var segueImageView: String = String()
    var segueTextLabel: String = String()
    var segueTextDescription: String = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.image = UIImage(named: segueImageView)
        textLabel.text = segueTextLabel
        textDescription.text = segueTextDescription
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
