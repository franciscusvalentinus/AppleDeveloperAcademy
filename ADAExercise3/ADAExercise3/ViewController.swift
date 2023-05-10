//
//  ViewController.swift
//  ADAExercise3
//
//  Created by Franciscus Valentinus Ongkosianbhadra on 11/04/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapButton() {
        let vc = UIViewController
        vc.view.backgroundColor = .red
        
        navigationController?.pushViewController(vc, animated: true)
    }


}

