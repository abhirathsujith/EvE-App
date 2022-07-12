//
//  Product.swift
//  EvE
//
//  Created by Abhirath Sujith on 12/07/22.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [
    
    Product(name: "A1", image: "1", price: 500),
    Product(name: "A2", image: "2", price: 600),
    Product(name: "A3", image: "3", price: 580),
    Product(name: "A4", image: "4", price: 560),
    Product(name: "A5", image: "5", price: 530),
    Product(name: "A6", image: "6", price: 900),
    Product(name: "A7", image: "7", price: 650),
    Product(name: "A8", image: "8", price: 730)
]
