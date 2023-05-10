//
//  ViewController.swift
//  ADAExercise4
//
//  Created by Franciscus Valentinus Ongkosianbhadra on 11/04/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    
    struct Sunset {
        let title: String
        let imageName: String
    }
    
    let data: [Sunset] = [
        Sunset(title: "sunset1", imageName: "sunset1"),
        Sunset(title: "sunset2", imageName: "sunset2"),
        Sunset(title: "sunset3", imageName: "sunset3"),
        Sunset(title: "sunset4", imageName: "sunset4"),
        Sunset(title: "sunset5", imageName: "sunset5"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sunset = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = sunset.title
        cell.iconImageView.image = UIImage(named: sunset.imageName)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }


}

