//
//  Post.swift
//  RapidApp
//
//  Created by Kenneth on 11/24/19.
//  Copyright © 2019 Connections Digital. All rights reserved.
//

import Foundation

public struct WordpressPost: Codable {
    var id: Int
    var date: String
    var date_gmt: String
    var guid: WordpressText
    var modified: String
    var modified_gmt: String
    var slug: String
    var status: String
    var type: String
    var link: String
    var title: WordpressText
    var content: WordpressProtectedText
    var excerpt: WordpressProtectedText?
    var author: Int
    var featured_media: Int?
    var comment_status: String?
    var ping_status: String?
    var sticky: Bool?
    var format: String?
    var categories: [Int]?
    var tags: [Int]?
    var _links: WordpressLinks?
    public var _embedded: WordpressEmbeddedPost?
}

public struct WordpressLinks: Codable {
    var _self: [WordpressLink]?
    var collection: [WordpressLink]?
    var about: [WordpressLink]?
    var author: [WordpressEmbeddableLink]?
    var replies: [WordpressEmbeddableLink]?
    var version_history: [WordpressLink]?
    var wp_featuredmedia: [WordpressEmbeddableLink]?
    var wp_attachment: [WordpressLink]?
    var wp_term: [WordpressTerm]?
    
    enum CodingKeys: String, CodingKey {
        case _self = "self"
        case version_history = "version-history"
        case wp_featuredmedia = "wp:featuredmedia"
        case wp_attachment = "wp:attachment"
        case wp_term = "wp:term"
        case collection, about, author, replies
    }
    
}

public struct WordpressEmbeddedPost: Codable {
    var author: [WordpressAuthor]?
    var wp_featuredmedia: [WordpressMedia]?
    var wp_term: [[WordpressEmbeddedTerm]]?
    
    enum CodingKeys: String, CodingKey {
        case author
        case wp_featuredmedia = "wp:featuredmedia"
        case wp_term = "wp:term"
    }
}

public struct WordpressAuthor: Codable {
    var id: Int
    var name: String
    var url: String
    var description: String
    var link: String
    var slug: String
    var avatar_urls: [Int:String]?
}

public struct WordpressText: Codable {
    var rendered: String
}

public struct WordpressProtectedText: Codable {
    var rendered: String
    var protected: Bool
}

public struct WordpressLink: Codable {
    var href: String
}

public struct WordpressEmbeddableLink: Codable {
    var href: String?
    var embeddable: Bool?
}

public struct WordpressTerm: Codable {
    var taxonomy: String?
    var embeddable: Bool?
    var href: String?
}

public struct WordpressEmbeddedTerm: Codable {
    var id: Int
    var link: String
    var name: String
    var slug: String
    var taxonomy: String
    var _links: WordpressLinks
}
