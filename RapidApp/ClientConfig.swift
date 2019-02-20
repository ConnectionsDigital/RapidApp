//
//  ClientConfig.swift
//  RapidApp
//
//  Created by Kenneth W Jackson on 11/24/18.
//  Copyright © 2018 Connections Digital. All rights reserved.
//

import Foundation

public struct Client {
    let firstName: String = ""
    let lastName: String = ""
    let displayName: String = ""
    let companyName: String = ""
    let language: String = ""
    let tagLine: String = ""
    let phone: String = ""
    let fax: String = ""
    let email: String = ""
    let uid: String = ""
    let password: String = ""
    let website: String = ""
    let facebookUrl: String = ""
    let twitterName: String = ""
    let youTubeUrl: String = ""
    let biographicalInfo: String = ""
    let profilePictureUrl: String = ""
}

public struct Addresses {
    let addressType: String = "billing"
    let address1: String = ""
    let address2: String = ""
    let city: String = ""
    let stateProvince: String = ""
    let postalCode: String = ""
}

public struct Orders {
    let orderId: String = ""
}

public struct Downloads {
    let downloadId: String = ""
}

public struct ClientStyle {
    let headerTextColor: String = ""
    let headerBackgroundColor: String = ""
    let primaryFont: String = ""
}
