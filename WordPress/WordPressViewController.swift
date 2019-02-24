//
//  WordPressViewController.swift
//  CDWP1.2
//
//  Created by Kenneth W Jackson on 2/10/19.
//  Copyright © 2019 Connections Digital. All rights reserved.
//

import UIKit
import SafariServices

class PostViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var dataList:[WPModel] = [] // Add array to store data model
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Note: Added communication processing to be done at screen display
        reloadListDatas()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: -
    func reloadListDatas() {
        // Set config for session · This time default
        let config = URLSessionConfiguration.default
        
        // Create an instance of NSURLSession
        let session = URLSession(configuration: config)
        
        // Specify the URL to connect
        let url = URL(string: "https://wordpress.org/news/wp-json/wp/v2/posts/")
        
        // Set communication processing task
        let task = session.dataTask(with: url!) {(data, response, error) in
            // Process only when an error occurs
            if error != nil {
                // An alert shows that an error has occurred here
                let controller : UIAlertController = UIAlertController(title: nil, message: "An error occurred", preferredStyle: UIAlertController.Style.alert)
                controller.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
                self.present(controller, animated: true, completion: nil)
                
                return;
            }
            
            // If there is no error, convert the data to JSON format and store it
            guard let jsonData: Data = data else {
                // An alert shows that an error has occurred here
                let controller : UIAlertController = UIAlertController(title: nil, message: "An error occurred", preferredStyle: UIAlertController.Style.alert)
                controller.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
                self.present(controller, animated: true, completion: nil)
                
                // End after display
                return
            }
            
            self.dataList = try! JSONDecoder().decode([WPModel].self, from: jsonData)
            
            // Return processing to the main thread
            DispatchQueue.main.async {
                // Update to the latest data
                self.tableView.reloadData()
            }
        }
        // Perform task
        task.resume()
    }
    
    // MARK: - UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        // One section
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Display cells by the number of acquired data
        return dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create an instance of the created "PostCell"
        let cell: PostCell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostCell
        
        // Retrieve the acquired data
        let data = dataList[indexPath.row]
        
        // Get date data and article title
        cell.titleLabel.text = String(data.title.rendered).htmlToString
        cell.dateLabel.text = data.dateString
        
        // Return an instance of a cell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Deselect a cell
        tableView.deselectRow(at: indexPath, animated: true)
        
        // Retrieve data
        let data = dataList[indexPath.row]
        
        // Retrieve article URL
        if let url = URL(string: data.link) {
            // Create an instance of SFSafariViewController
            //let controller: SFSafariViewController = SFSafariViewController(url: url)
            let controller: SFSafariViewController
            
            // Open in reader view if available
            if #available(iOS 11.0, *) {
                let config = SFSafariViewController.Configuration()
                config.entersReaderIfAvailable = true
                controller = SFSafariViewController(url: url, configuration: config)
            } else {
                controller = SFSafariViewController(url: url, entersReaderIfAvailable: true)
            }
            
            // Transit to the next screen and display it
            self.present(controller, animated: true, completion: nil)
        }
    }
}
