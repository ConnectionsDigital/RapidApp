//
//  StringConversion.swift
//  CDWP1.1
//
//  Created by Kenneth W Jackson on 2/10/19.
//  Copyright © 2019 Connections Digital. All rights reserved.
//
// original idea from https://stackoverflow.com/questions/25607247/how-do-i-decode-html-entities-in-swift

import UIKit

extension String {
    var htmlToAttributedString: NSAttributedString? {
        guard let data = data(using: .utf8) else { return NSAttributedString() }
        do {
            return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding:String.Encoding.utf8.rawValue], documentAttributes: nil)
        } catch {
            return NSAttributedString()
        }
    }
    var htmlToString: String {
        return htmlToAttributedString?.string ?? ""
    }
}
