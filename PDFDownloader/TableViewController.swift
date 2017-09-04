//
//  TableViewController.swift
//  PDFDownloader
//
//  Created by HartleyLabMacMini on 04/09/17.
//  Copyright © 2017 HartleyLabMacMini. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, cellDelegate{
    
    let pdfArray = ["https://developer.apple.com/programs/terms/apple_developer_agreement.pdf",
                    "https://itunesconnect.apple.com/docs/iTunesConnect_DeveloperGuide.pdf",
                    "http://www.iso.org/iso/annual_report_2009.pdf"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView()
        self.title = "PDF Demo"
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

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pdfArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellViewControllerTableViewCell
         cell.NameLabel.text = pdfArray[indexPath.row].components(separatedBy: "/").last
         cell.delegate = self
        return cell
    }
    
    func didClickViewButton(cell: UITableViewCell) {
        let indexPath = self.tableView.indexPath(for: cell)
        print(indexPath?.row ?? 9)
    }
    
    func didClickDownloadButton(cell: UITableViewCell) {
        let indexPath = self.tableView.indexPath(for: cell)
        print(indexPath?.row ?? 9)
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
