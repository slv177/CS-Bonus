//
//  MapViewController.swift
//  CS Bonus
//
//  Created by SS on 23.9.18.
//  Copyright © 2018 SS. All rights reserved.
//

import UIKit
import MapKit


class MapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let initialLocation = CLLocation(latitude: 55.80474, longitude: 37.52312)
        centerMapOnLocation(location: initialLocation)
        
        loadInitialData()
        mapView.addAnnotations(points)
      
    }
    
    @IBOutlet weak var mapView: MKMapView!
    
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    var points: [Point] = []
    
    func loadInitialData() {
        guard let fileName = Bundle.main.path(forResource: "Points", ofType: "json")
            else { return }
        let optionalData = try? Data(contentsOf: URL(fileURLWithPath: fileName))
        
        
        guard
            let data = optionalData,
            let json = try? JSONSerialization.jsonObject(with: data),
            let dictionary = json as? [String: Any],
            let works = dictionary["data"] as? [[Any]]
            else { return }
        
        let validWorks = works.compactMap{Point(json: $0)}
        points.append(contentsOf: validWorks)
    }

}
