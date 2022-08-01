//
//  ViewController.swift
//  Tableview
//
//  Created by hari krishna Reddy Regalla on 2022-08-01.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    let movies = ["Eternals", "Dune", "No Time To Die", "Last Night in Soho", "Ron’s Done Wrong", "Halloween Kills", "Venom", "Antlers", "The Addams Family 2"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }


}
extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("taped")
    }
    
}

extension ViewController: UITableViewDataSource {
     
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = movies[indexPath.row]
        return cell
    }
    
}

