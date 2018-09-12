//
//  Product.swift
//  LMProject
//
//  Created by TapashM on 30/06/18.
//  Copyright © 2018 ITC Infotech. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Product {
    public private(set) var url: String
    public private(set) var name: String
    public private(set) var price: Double
    public private(set) var currency: String
    
    init(json:JSON){
        url = json["url"].stringValue
        name = json["name"].stringValue
        price = json["price"].doubleValue
        currency = json["currency"].stringValue
    }
}
