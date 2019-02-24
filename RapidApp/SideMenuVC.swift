//
//  SideMenuVC.swift
//  RapidApp
//
//  Created by Kenneth W Jackson on 11/18/18.
//  Copyright © 2018 Connections Digital. All rights reserved.
//

import UIKit

class SideMenuVC: UITableViewController {

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        switch indexPath.row {
        case 0: NotificationCenter.default.post(name: NSNotification.Name("ShowWordPress"), object: nil)
        case 1: NotificationCenter.default.post(name: NSNotification.Name("ShowMap"), object: nil)
        case 2: NotificationCenter.default.post(name: NSNotification.Name("ShowContact"), object: nil)
        case 3: NotificationCenter.default.post(name: NSNotification.Name("ShowAbout"), object: nil)
        case 4: NotificationCenter.default.post(name: NSNotification.Name("ShowPrivacy"), object: nil)
        case 5: NotificationCenter.default.post(name: NSNotification.Name("ShowTOS"), object: nil)
        default: break
        }
    }
}
