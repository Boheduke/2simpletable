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
    
    //定义一个布尔数组，用于存储bookmark
    var restaurantIsVisited=[Bool](count:21,repeatedValue:false)
    
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

       //在完成cell单元格的一些列选中、alert弹出框事件后，对cell单元格的bookmark进行手动更新。
        if restaurantIsVisited[indexPath.row] {
            cell.accessoryType = .Checkmark
            
        }else{
            cell.accessoryType = .None
        }
        
        
        return cell
    }
    
    override func tableView(tableView:UITableView,didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        //creat an option menu as action sheet
        let optionMenu=UIAlertController (title: nil, message: "What do you want to do?", preferredStyle: .Alert)
        
        // Add actions to the menu
        let cancelAction=UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        optionMenu.addAction(cancelAction)
        
        //Display the menu
        self.presentViewController(optionMenu, animated: true, completion: nil)
        
        
        /* 增加电话呼叫
*/
        let callActionHandler = { (action:UIAlertAction!) -> Void in
            let alertMessage = UIAlertController (title: "Service Unavailable", message: "Sorry,the call feature is not available yet .Please retry later.", preferredStyle: .Alert)
                alertMessage.addAction(UIAlertAction(title: "Ok", style: .Default, handler: nil))
                self.presentViewController(alertMessage, animated: true, completion: nil)
        }
        
        let callAction=UIAlertAction(title: "Call" + "123-000-\(indexPath.row)", style: .Default, handler: callActionHandler  )
        optionMenu.addAction(callAction)
        
        //设定已经到过次饭店。使用另外一种handler实现模式。
        
        let isVisitedAction=UIAlertAction (title: "I've been here", style: .Default, handler: {
            (action:UIAlertAction!) -> Void  in
            let cell = tableView.cellForRowAtIndexPath(indexPath)
            cell?.accessoryType = .Checkmark
            self.restaurantIsVisited[indexPath.row]=true
            
        })
        optionMenu.addAction(isVisitedAction)
        
        //设定取消选择cell功能的代码。
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
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
