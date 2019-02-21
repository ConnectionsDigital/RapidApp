//
//  WordPressModel.swift
//  CDWP1.2
//
//  Created by Kenneth W Jackson on 2/10/19.
//  Copyright © 2019 Connections Digital. All rights reserved.
//

import Foundation

struct WPModel: Codable {
    
    var link: String = "" // Article URL
    var date: String = "" // Article release date
    
    var dateString: String {
        // Create instance of DateFormatter
        let formatter: DateFormatter = DateFormatter()
        
        // Set format to receive
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        
        // Confirm whether it can convert to Date type correctly
        if let date = formatter.date(from: date) {
            // Specify the format to display
            formatter.dateFormat = "MM/dd/yyyy HH:mm"
            
            // String Convert to type and return
            let str = formatter.string(from: date)
            return str
        }
        //If it should fail, do not change "date" return it
        return date
    }
    
    var title: PostTitleModel = PostTitleModel() // Article title
    struct PostTitleModel: Codable {
        var rendered: String = ""
    }
}
