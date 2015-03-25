//
//  ViewController.swift
//  2simpletable
//
//  Created by Thomas Lasky on 15/3/25.
//  Copyright (c) 2015年 Thomas Lasky. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var restaurantNames=["Cafe Deadend","Homei","Teakha","Cafe Loisl","Petite Oster","For Kee Restaurant","Po's Atelier","Bourke Street Bakery","Haigh's Chocolate","Palmomino Espresso","Upstrate","Traif","Graham Avenue Meats And Deli" ,"Wffle & Wolf","Five Leaves","Cafe Lore","confessional","Barrafina","Donostia", "Royal Oak","Cask Pbu and Kitchen"]
    // use a array to store the table data.
    
    func tableView(tableView: UITableView , numberOfRowsInSection section :Int) -> Int {
        // Return the number of rows in the section.
        return restaurantNames.count
    }
    

    func tableView(tableView: UITableView , cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier,forIndexPath:indexPath) as UITableViewCell
        
        //config the cell...\
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image=UIImage(named: "restaurant")
        return cell
    }
    
    
    
    
}

