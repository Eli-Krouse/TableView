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
    
    
    let fruit = ["apple", "banana", "strawberry", "mango", "orange"]
    let vegetable = ["carrot", "tomato", "broccoli", "green bean"]
    
    //This method is called repeatedly
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

extension ViewController
{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("#1.", #function, indexPath)
        //#1. Get or reuse a cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //#2. put fata into the cell
        
        switch(indexPath.section)
        {
        case 0:
            cell.textLabel?.text = fruit[indexPath.row]
        case 1:
            cell.textLabel?.text = vegetable[indexPath.row]
        default:
            break
            
        }

        //#3. return the cell
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        print("#1.", #function)
        switch(section)
        {
        case 0:
            return fruit.count
        case 1:
            return vegetable.count
        default:
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch(section)
        {
        case 0:
            return "fruits"
        case 1:
            return "veggies"
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        switch(section)
        {
        case 0:
            return  "\(fruit.count) fruit(s) are sweet"
        case 1:
            return "\(vegetable.count) veggie(s) are nutritious"
        default:
            return nil
        }
    }
}

extension ViewController: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch(indexPath.section)
        {
        case 0:
            print("you selected \(fruit[indexPath.row])")
        case 1:
            print("you selected \(vegetable[indexPath.row])")
        default:
            break
        }
    }
}

