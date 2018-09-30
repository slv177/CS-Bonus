//
//  PointsModel.swift
//  CS Bonus
//
//  Created by SS on 23.9.18.
//  Copyright © 2018 SS. All rights reserved.
//

import Foundation
import MapKit
import Contacts

class Point: NSObject, MKAnnotation {
    let title: String? // "Колокольчик"
    let locationName: String // "Москва, Ленинградский проспект, 50"
    let type: String // "Кафе"
    let coordinate: CLLocationCoordinate2D // (latitude: latitude, longitude: longitude)
    
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.locationName = locationName
        self.type = discipline
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return locationName
    }
    
    init?(json: [Any]) {
        // 1.
        self.title = json[0] as? String ?? "No title"
        self.locationName = json[1] as! String
        self.type = json[2] as! String
        
        // 2.
        if let latitude = Double(json[3] as! String),
            let longitude = Double(json[4] as! String) {
            self.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        } else {
            self.coordinate = CLLocationCoordinate2D()
        }
    }
}

