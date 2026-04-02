//
//  ViewController.swift
//  TableView
//
//  Created by Krouse, William E. on 4/2/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource
{
    // When you go into settings you see many tabs. each tab is a cell. and the groupings are called sections
    // Deleage Pattern: One object allows another onject to handle some of its tasks
    //DataSource: get data
    //Delegate: response to user actions
    
    //This method is called repeatedly
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("#1.", #function, indexPath)
        //#1. Get or reuse a cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //#2. put fata into the cell
            cell.textLabel?.text = "\(indexPath.section) & \(indexPath.row)"
        //#3. return the cell
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("#1.", #function)
        return 100
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

