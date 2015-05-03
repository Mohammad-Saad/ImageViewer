//
//  IamgeTableTableViewController.swift
//  ImageViewer
//
//  Created by Hassaan Masood on 5/3/15.
//  Copyright (c) 2015 Szabist. All rights reserved.
//

import UIKit

class IamgeTableTableViewController: UITableViewController {

    var photos = [Photo]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var newphoto = Photo(name: "Kamalame Cay, The Bahamas", filename: "Kamalame Cay,", notes: "This private island is just a 15-minute flight from Nassau and offers an isolated sanctuary surrounded by crystal-clear water and shaded with rustling palms.")
        photos.append(newphoto)
        
        newphoto = Photo(name: "Rosalie Bay, Dominica", filename: "Rosalie Bay", notes: "Set on the wild Atlantic coast of rugged, mostly undeveloped Dominica, Rosalie Bay offers a tranquil island escape 45 minutes from the capital city of Roseau.")
        photos.append(newphoto)
        
        newphoto = Photo (name: "Playa del Carmen, Mexico", filename: "Playa del Carmen", notes: "The exotic city of Playa del Carmen sits just outside of Cancun, with gorgeous beaches on the coast of the Caribbean Sea.")
        photos.append(newphoto)
        
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
        return photos.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ImageCell", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...
        var currentphoto = photos[indexPath.row]
        cell.textLabel?.text = currentphoto.name
        cell.detailTextLabel?.text = currentphoto.notes

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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
       
        var secondScene = segue.destinationViewController as DisplayViewController
        // Pass the selected object to the new view controller.
        
        if let indexPath = self.tableView.indexPathForSelectedRow() {
            let selectedPhoto = photos[indexPath.row]
            secondScene.currentPhoto = selectedPhoto
        }

        }
    }
    

