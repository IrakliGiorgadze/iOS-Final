//
//  MenuItem.swift
//  Little Lemon App
//
//  Created by Ryan on 2023/02/01.
//

import Foundation

struct MenuItem: Decodable {
    let title: String
    let image: String
    let price: String
    let description: String?
}
