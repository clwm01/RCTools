//
//  ComponentsTableViewController.swift
//  RCToolsDemo
//
//  Created by Apple on 10/20/15.
//  Copyright (c) 2015 rexcao. All rights reserved.
//

import UIKit

class ComponentsTableViewController: UITableViewController {

    let actions = ["paragraph", "dictionary", "gallery", "audio", "chat", "addressBook"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        self.navigationItem.title = "Components"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func popVC(row: Int) {
        if row == 0 {
            let destVC = UIStoryboard.VCWithSpecificSBAndSBID(SBName: "Components", SBID: "ParagraphViewController") as! ParagraphViewController
            self.navigationController?.pushViewController(destVC, animated: true)
        } else if row == 1 {
            let destVC = UIStoryboard.VCWithSpecificSBAndSBID(SBName: "Components", SBID: "DictionaryViewController") as! DictionaryViewController
            self.navigationController?.pushViewController(destVC, animated: true)
        } else if row == 2 {
            let destVC = UIStoryboard.VCWithSpecificSBAndSBID(SBName: "Components", SBID: "GalleryBrowserViewController") as! GalleryBrowserViewController
            self.navigationController?.pushViewController(destVC, animated: true)
        } else if row == 3 {
            let destVC = UIStoryboard.VCWithSpecificSBAndSBID(SBName: "Components", SBID: "AudioViewController") as! AudioViewController
            self.navigationController?.pushViewController(destVC, animated: true)
        } else if row == 4 {
            let destVC = ChatViewController()
            self.navigationController?.pushViewController(destVC, animated: true)
        } else if row == 5 {
            self.navigationController?.pushViewController(AddressBookViewController(), animated: true)
        }
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
        return self.actions.count
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.popVC(indexPath.row)
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("components", forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...
        cell.textLabel?.text = self.actions[indexPath.row]

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
