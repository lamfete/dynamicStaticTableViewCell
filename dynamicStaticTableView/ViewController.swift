//
//  ViewController.swift
//  dynamicStaticTableView
//
//  Created by Agust Lofianto on 4/20/16.
//  Copyright © 2016 xiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var datas = ["one", "two", "three", "four", "five", "six"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count + 2
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! ProductTableViewCell
        
        // Static Cell will be shown in a 1st and 2nd row
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("staticCell1") as! ProductTableViewCell!
            cell.textLbl.text = "this is first static cell"
            
            return cell
        }
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCellWithIdentifier("staticCell2") as! ProductTableViewCell!
            cell.textLbl.text = "this is second static cell"
            
            return cell
        }
            //dynamic cell will be shown here
        else if indexPath.row > 1 && indexPath.row < datas.count {
            let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! ProductTableViewCell!
            cell.textLbl.text = datas[indexPath.row - 2]
            
            return cell
        }
        
        cell.textLbl.text = datas[indexPath.row - 2]
        return cell

        /*let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! ProductTableViewCell
        
        // Static Cell will be shown in a 1st and 2nd row
        if indexPath.row == 0 {
            let cell1 = tableView.dequeueReusableCellWithIdentifier("staticCell1") as! ProductTableViewCell!
            cell1.textLbl.text = "this is first static cell"
            
            return cell1
        }
        if indexPath.row == 1 {
            let cell2 = tableView.dequeueReusableCellWithIdentifier("staticCell2") as! ProductTableViewCell!
            cell2.textLbl.text = "this is second static cell"
            
            return cell2
        }
        //dynamic cell will be shown here
        else if indexPath.row > 1 && indexPath.row < datas.count {
            let cell3 = tableView.dequeueReusableCellWithIdentifier("cell") as! ProductTableViewCell!
            cell3.textLbl.text = datas[indexPath.row - 2]
            
            return cell3
        }
        
        cell.textLbl.text = datas[indexPath.row - 2]
        return cell*/
    }

}

