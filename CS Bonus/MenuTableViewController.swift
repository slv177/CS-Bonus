//
//  MenuTableViewController.swift
//  CS Bonus
//
//  Created by SS on 20.9.18.
//  Copyright © 2018 SS. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "s1", sender: Any?.self)
    }
    
    
    
//
//    var menuItems = ["Мой QR","История счета","Перевод баллов","Настройки","Настройки","О приложении"]
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return menuItems.count
//    }
//
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuItemCell", for: indexPath)
//
//        cell.textLabel?.text = menuItems[indexPath.row]
//
//        return cell
//    }
//

}
