//
//  TableViewController.swift
//  DessertTable
//
//  Created by Yan Malinovsky on 25.11.16.
//  Copyright © 2016 Yan Malinovsky. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var foodArray:[Food] = [Food]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        
        let food1 = Food(imageName: "cake.jpg", description: "Chocolate Cake", moreInfo: "There is nothing better than a great chocolate cake." )
        let food2 = Food(imageName: "meringue.jpg", description: "Meringue & Berries", moreInfo: "I really don't like meringue but it's a nice photo.")
        let food3 = Food(imageName: "peaches.jpg", description: "Grilled Peaches", moreInfo: "This would be perfect as a summer time dessert." )
        let food4 = Food(imageName: "tiramisu.jpg", description: "Tiramisu", moreInfo: "One of my favorite Italian desserts.  Yum." )
        
        foodArray.append(food1)
        foodArray.append(food2)
        foodArray.append(food3)
        foodArray.append(food4)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foodArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell

        let foodItem = foodArray[indexPath.row]

        cell.cellImageView.image = UIImage(named: foodItem.imageName)
        cell.cellLabel.text = foodItem.description
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let foodSelected = foodArray[indexPath.row]
        let viewController: ViewController = self.storyboard!.instantiateViewController(withIdentifier: "ViewControllerStoryboardID") as! ViewController
        
        viewController.segueImageView = foodSelected.imageName
        viewController.segueTextLabel = foodSelected.description
        viewController.segueTextDescription = foodSelected.moreInfo
        
        self.present(viewController, animated: true, completion: nil)
    }
}
