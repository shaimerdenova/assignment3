//
//  ViewController.swift
//  shop
//
//  Created by Admin on 03.02.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var start: UIButton! 
    @IBOutlet weak var sportShopLbl: UILabel!
    @IBOutlet weak var welcomeLbl: UILabel!
    @IBOutlet weak var imageFon: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        start.layer.cornerRadius = 45
    }


    @IBAction func startBtn(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "SecondViewController")
            as! SecondViewController
            navigationController?.pushViewController(vc, animated: true)    }
    

}

