//
//  HistoryModel.swift
//  CS Bonus
//
//  Created by SS on 25/09/2018.
//  Copyright © 2018 SS. All rights reserved.
//

import Foundation

struct Responce: Codable {
    let data: [Transaction]
}

struct Transaction: Codable {
    let direction: String
    let remoteAdress: String
    let time: String
    let amount: String
}
