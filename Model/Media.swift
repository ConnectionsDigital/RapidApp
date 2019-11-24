//
//  Media.swift
//  RapidApp
//
//  Created by Kenneth on 11/24/19.
//  Copyright © 2019 Connections Digital. All rights reserved.
//

import Foundation

public struct WordpressMedia: Codable {
    var id: Int
    var date: String
    var slug: String
    var type: String
    var link: String
    var title: WordpressText
    var author: Int
    var caption: WordpressText
    var alt_text: String
    var media_type: String
    var mime_type: String
    var media_details: WordpressMediaDetails
    var source_url: String
    var _links: WordpressLinks
}

public struct WordpressMediaDetails: Codable {
    //var width: Double
    //var height: Double
    var file: String
    var sizes: WordpressMediaSizes
}

public struct WordpressMediaSizes: Codable {
    var thumbnail: WordpressMediaSize?
    var medium: WordpressMediaSize?
    var medium_large: WordpressMediaSize?
    var large: WordpressMediaSize?
    var full: WordpressMediaSize?
}

public struct WordpressMediaSize: Codable {
    var file: String
    //var width: Double
    //var height: Double
    var mime_type: String?
    var source_url: String
}
