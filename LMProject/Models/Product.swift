//
//  Product.swift
//  LMProject
//
//  Created by TapashM on 30/06/18.
//  Copyright © 2018 ITC Infotech. All rights reserved.
//

import Foundation

struct Empty: Codable {
    let statusCode: Int
    let message, status: String
    let products: [Product]
    
    enum CodingKeys: String, CodingKey {
        case statusCode = "StatusCode"
        case message = "Message"
        case status = "Status"
        case products
    }
}

struct Product: Codable {
    let url: String
    let name, price, currency: String
}


