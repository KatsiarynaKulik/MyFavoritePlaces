//
//  MainViewController.swift
//  MyFavoritePlaces
//
//  Created by Katsiaryna Kulik on 26.04.23.
//

import UIKit

class MainViewController: UITableViewController {
    
    let places = Place.getPlaces()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        cell.nameLabel.text = places[indexPath.row].name
        cell.lacationLabel.text = places[indexPath.row].location
        cell.imageOfPlace.image = UIImage(named: places[indexPath.row].image)
        
        cell.typeLabel.text = places[indexPath.row].type
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace.clipsToBounds = true

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    
    @IBAction func cancelAction(_ segue: UIStoryboardSegue) {}
}
