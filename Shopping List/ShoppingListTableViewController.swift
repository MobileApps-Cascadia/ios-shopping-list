//
//  ShoppingListTableViewController.swift
//  Shopping List
//
//  Created by Brian Bansenauer on 5/17/16.
//   with inspiration from https://www.ralfebert.de/tutorials/ios-swift-uitableviewcontroller/
//  Copyright © 2016 Brian Bansenauer. All rights reserved.
//

import UIKit

class ShoppingListTableViewController: UITableViewController {
    
    var listData = ["Bread", "Brocolli", "Carrots", "Cheese", "Eggs"]
    
    // MARK: UIViewController lifecycle
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

    // MARK: - Table view data source life cycle

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listData.count
    }

    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ItemCell", forIndexPath: indexPath)

        //TODO: Assign the textLabel for the cell equal to the item in the listData Array at the indexPath.row value
        let itemName = listData[indexPath.row]
        cell.textLabel?.text = itemName
        cell.imageView?.image = UIImage(named: itemName.lowercaseString)
     
        return cell
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        let detailView = segue.destinationViewController as! ViewItemController
        
        let indexPath = self.tableView.indexPathForSelectedRow
        
        // Pass the selected object name to the new view controller.
        detailView.itemName = listData[indexPath!.row]
        
    }
    

}
