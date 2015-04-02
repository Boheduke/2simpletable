//
//  RestaurantTableViewController.swift
//  2simpletable
//
//  Created by Thomas Lasky on 15/3/31.
//  Copyright (c) 2015年 Thomas Lasky. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {

    
    var restaurantNames=["Cafe Deadend","Homei","Teakha","Cafe Loisl","Petite Oster","For Kee Restaurant","Po's Atelier","Bourke Street Bakery","Haigh's Chocolate","Palmomino Espresso","Upstrate","Traif","Graham Avenue Meats And Deli" ,"Wffle & Wolf","Five Leaves","Cafe Lore","confessional","Barrafina","Donostia", "Royal Oak","Cask Pbu and Kitchen"]
    
    var restaurantImages=["cafedeadend.png","homei.png","teakha.png","cafeloisl.png","petiteoyster.png","forkeerestaurant.png","posatelier.png","bourkestreetbakery.png","haighschocolate.png","palominoespresso.png","upstate.png","traif.png","grahamavenuemeats.png","wafflewolf.png","fiveleaves.png","cafelore.png","confessional.png","barrafina.png","donostia.png","thaicafe.png"]
    
    var restaurantLocations=["Hong Kong","Hong Kong","Hong Kong","Hong Kong","Hong Kong","Hong Kong","Hong  Kong","Sydney","Sydney","Sydney","New York","New York","New York","New York","London","London","London","London"]
    
    var restaurantTypes=["Coffe & Tea Shop","Cafe","Tea House","Austrain / Causual  Drink","French","Bakery","Bakery","Chocolate","Cafe","Ameriacan / Seafood","American","American","Breakfast & Brunch","Coffee & Tea","Coffee & Tea","Latin American","Spanish","spanish","spanish","British","Thai"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.restaurantNames.count
        
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier="Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as CustomTableViewCell

        // Configure the cell...
        cell.nameLabel.text=restaurantNames[indexPath.row]
        cell.locationLabel.text=restaurantLocations[indexPath.row]
        cell.typeLabel.text=restaurantTypes[indexPath.row]
        cell.thumbnailImageView.image=UIImage(named: restaurantImages[indexPath.row])

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}