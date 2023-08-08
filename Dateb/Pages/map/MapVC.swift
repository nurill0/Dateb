//
//  MapVC.swift
//  Dateb
//
//  Created by Nurillo Domlajonov on 18/07/23.
//

import UIKit
import MapKit

class MapVC: BaseVC, CLLocationManagerDelegate{
    
    var lat  = 0.0
    var long = 0.0
    let manager = CLLocationManager()
    
    lazy var mapView : MKMapView = {
        let map = MKMapView()
        map.translatesAutoresizingMaskIntoConstraints = false
        map.tintColor = .red
        map.showsUserLocation = true
        map.isPitchEnabled = true
        map.isRotateEnabled = false
        map.isZoomEnabled = true
        map.isExclusiveTouch = true
        map.mapType = .standard
        
        return map
    }()
    
    lazy var userLocationBtn : UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(UIImage(named: "target")?.withTintColor(.red, renderingMode: .alwaysOriginal), for: .normal)
        btn.addTarget(self, action: #selector(getUserLocation), for: .touchUpInside)
        
        return btn
    }()
    
    
}



//MARK: ViewController life cycle
extension MapVC {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.navigationItem.hidesBackButton = true
        tabBarController?.navigationItem.title = "Map"
        tabBarController?.navigationItem.searchController = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.delegate = self
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }
    
}



//MARK: functions
extension MapVC {
    
    @objc func getUserLocation(){
        let coordinate = CLLocationCoordinate2D(latitude: lat, longitude: long)
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01 )
        let region = MKCoordinateRegion(center: coordinate, span: span)
        mapView.setRegion(region, animated: true)
    }
    
}



//MARK: map functions
extension MapVC{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first{
            lat = location.coordinate.latitude
            long = location.coordinate.longitude
            manager.stopUpdatingLocation()
            render(location)
        }
    }
    func render(_ location: CLLocation){
        let coordinate = CLLocationCoordinate2D(latitude: 40.81407, longitude: 72.35836)
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1 )
        let region = MKCoordinateRegion(center: coordinate, span: span)
        mapView.setRegion(region, animated: true)
        let pin = MKPointAnnotation()
        pin.coordinate = coordinate
        pin.accessibilityLabel = "fwefwe"
        pin.title = "Developer's house"
        pin.subtitle = "Nurillo Domlajonov"
//        mapView.addAnnotation(pin)
    }
}


//MARK: UI
extension MapVC {
    
    fileprivate func configureUI(){
        mapViewConst()
        userLocationBtnConst()
    }
    
    fileprivate func mapViewConst(){
        baseContainerV.addSubview(mapView)
        mapView.top(baseContainerV.topAnchor)
        mapView.bottom(baseContainerV.bottomAnchor)
        mapView.right(baseContainerV.rightAnchor)
        mapView.left(baseContainerV.leftAnchor)
    }
    
    fileprivate func userLocationBtnConst(){
        baseContainerV.addSubview(userLocationBtn)
        userLocationBtn.bottom(baseContainerV.bottomAnchor, -40)
        userLocationBtn.right(baseContainerV.rightAnchor, -20)
        userLocationBtn.height(60)
        userLocationBtn.width(60)
    }
    
}




//MARK: mapview delegate
extension MapVC: MKMapViewDelegate{
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let rendere = MKPolylineRenderer(overlay: overlay)
        rendere.lineWidth = 2
        rendere.strokeColor = .blue
        return rendere
    }
}
