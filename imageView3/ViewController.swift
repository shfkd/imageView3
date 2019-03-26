//
//  ViewController.swift
//  imageView3
//
//  Created by D7703_07 on 2019. 3. 26..
//  Copyright © 2019년 1234. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myImgView: UIImageView!
    var count = 1
    var sw = 0
    @IBOutlet weak var myLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myImgView.image = UIImage(named: "frame1.png")
        myLable.text = "1"
    }
    
    @IBAction func changeImage(_ sender: UIButton) {
        
        if sw == 0 {
            count += 1
            if count == 5 {
                sw = 1
            }
        }
        else{
            count -= 1
            if count == 1 {
                sw = 0
            }
        }
            
        
        myImgView.image = UIImage(named: "frame\(count).png")
        
        myLable.text = String(count)
    }
    


}

