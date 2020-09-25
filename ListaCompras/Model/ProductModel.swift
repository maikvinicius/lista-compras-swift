//
//  ProductModel.swift
//  ListaCompras
//
//  Created by Maik Vinicius on 24/09/20.
//  Copyright © 2020 DevJrBR. All rights reserved.
//

import Foundation

class ProductModel {
    
    let name: String!
    let quantity: Int!
    let price: String!
    
    init(name: String, quantity: Int, price: String) {
        self.name = name
        self.quantity = quantity
        self.price = price
    }
    
}
