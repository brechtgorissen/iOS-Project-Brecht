//
//  MapViewController.swift
//  Eindproject Brecht
//
//  Created by mobapp08 on 01/02/2019.
//  Copyright © 2019 EhB. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    let dao = DAO.init()
    @IBOutlet weak var segCtrlMap: UISegmentedControl!
    @IBOutlet weak var festivalMapView: MKMapView!
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard let annotation = annotation as? Stage else { return nil }
        let identifier = "marker"
        var view: MKMarkerAnnotationView
        if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
            as? MKMarkerAnnotationView {
            dequeuedView.annotation = annotation
            view = dequeuedView
        } else {
            view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            view.canShowCallout = true
            view.calloutOffset = CGPoint(x: -5, y: 5)
        }
        return view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        festivalMapView.mapType = .hybrid
        let mapRadius: CLLocationDistance = 150
        let mapCenter = CLLocationCoordinate2DMake(51.151779, 2.719709)
        let mapRegion = MKCoordinateRegion.init(center: mapCenter, latitudinalMeters: mapRadius, longitudinalMeters: mapRadius)
        festivalMapView.setRegion(mapRegion, animated: true)
        switch (segCtrlMap.selectedSegmentIndex) {
        case 0:
            festivalMapView.addAnnotations(dao.stageList)
        case 1:
            festivalMapView.removeAnnotations(dao.stageList)
            var stageAnnotations:[MKAnnotation] = [MKAnnotation]()
            for stage in dao.stageList{
                if stage.category == "Stages"{
                    stageAnnotations+=[stage]
                }
            }
            festivalMapView.addAnnotations(stageAnnotations)
        case 2:
            festivalMapView.removeAnnotations(dao.stageList)
            var drinksAnnotations:[MKAnnotation] = [MKAnnotation]()
            for drinks in dao.stageList{
                if drinks.category == "Drinks"{
                    drinksAnnotations+=[drinks]
                }
            }
            festivalMapView.addAnnotations(drinksAnnotations)
        case 3:
            festivalMapView.removeAnnotations(dao.stageList)
            var foodAnnotations:[MKAnnotation] = [MKAnnotation]()
            for food in dao.stageList{
                if food.category == "Food"{
                    foodAnnotations+=[food]
                }
            }
            festivalMapView.addAnnotations(foodAnnotations)
        default:
            festivalMapView.addAnnotations(dao.stageList)
        }
    }
    
    @IBAction func reloadMapView() {
        self.viewDidLoad()
    }
}
