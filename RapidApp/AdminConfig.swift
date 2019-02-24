//
//  Config.swift
//  RapidApp
//
//  Created by Kenneth W Jackson on 11/24/18.
//  Copyright © 2018 Connections Digital. All rights reserved.
//

import Foundation

struct Network {
    let url: String = "https://connections.digital"
}

struct Contact {
    let longName: String = "Connections Information Systems"
    let shortName: String = "Connections.Digital"
    let tagLine: String = "Website Design & Media Production"
    let address1: String = "9507 Perry Avenue"
    let address2: String = ""
    let city: String = "Amarillo"
    let stateProvince: String = "Texas"
    let postalCode: String = "79119"
    let phone: String = "(806) 341-8422"
    let fax: String = ""
    let email: String = "service@connections.digital"
    let website: String = "https://Connections.Digital"
    let facebookUrl: String = "https://business.facebook.com/connectionsdigitalmedia"
    let twitter: String = "@ConnectionsDM"
    let youTubeUrl: String = "https://www.youtube.com/connectionsis/"
}

struct Style {
    let headerTextColor: String = "FFFFFF"
    let headerBackgroundColor: String = "E32400"
    let primaryFont: String = "helvetica"
    let borderColor: String = "UIColor.darkGray.cgColor"
    let boarderWidth: Int = 1
}
