//
//  RateTableViewController.swift
//  act10.1
//
//  Created by Alumno IDS on 14/03/18.
//  Copyright © 2018 Alumno IDS. All rights reserved.
//

import UIKit

class RateTableViewController: UITableViewController {

    var rates = [Rates]()
    let date = UIDatePicker()
    private func loadRates()
    {
        let photo1 = UIImage(named: "i1")
         let photo2 = UIImage(named: "i2")
         let photo3 = UIImage(named: "i3")
        guard case i1 = Rates(name: "school p", photo: photo1, note: "10", resume: "high school")else
        {
            fatalError("Unable to instantiate 1")
        }
        guard case i2 = Rates(name: "school r", photo: photo2, note: "6", resume: "Elementary")else
        {
            fatalError("Unable to instantiate 1")
        }
        guard case i3 = Rates(name: "school y", photo: photo2, note: "8", resume: "Middle school")else
        {
            fatalError("Unable to instantiate 1")
        }
        rates += [#imageLiteral(resourceName: "i1"), #imageLiteral(resourceName: "i2"), #imageLiteral(resourceName: "i3")]
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        loadRates()
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
        return rates.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cellIdentifier = "RateTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? RateTableViewCell  else {
            fatalError("The dequeued cell is not an instance of RateTableViewCell.")
        }
        // Configure the cell...
        
        
        let rate = rates[indexPath.row]
        
        cell.Name.text = Rates.name
        cell.Note.text = Rates.note
        cell.Resume.text = Rates.resume
        cell.photo.text = Rates.photo
        
        return cell
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
