//
//  Product.swift
//  LMProject
//
//  Created by TapashM on 30/06/18.
//  Copyright © 2018 ITC Infotech. All rights reserved.
//

import Foundation

///********codable
struct Response: Codable {
    let statusCode: Int
    let message, status: String
    let data: Product
    
    enum CodingKeys: String, CodingKey {
        case statusCode = "StatusCode"
        case message = "Message"
        case status = "Status"
        case data
    }
}

struct Product: Codable {

    let url: String
    let name: String
    let price: Double
    let currency: String
    
    enum CodingKeys: String, CodingKey {
        case url = "url"
        case name = "name"
        case price = "price"
        case currency = "currency"
    }
}

