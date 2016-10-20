//
//  LocalizacaoViewController.swift
//  TuristandoOrio_Ote
//
//  Created by Oteniel on 9/26/16.
//  Copyright © 2016 Oteniel. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class LocalizacaoViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
 
        var bairros: NSArray?
        var nomeAnt: NSDictionary?
        var coordenadas:CLLocationCoordinate2D?
        
        @IBOutlet weak var nomedoponto: UILabel!
        @IBOutlet weak var descricao: UILabel!
        @IBOutlet weak var endereco: UILabel!
        @IBOutlet weak var image: UIImageView!
        @IBOutlet weak var map: MKMapView!

    @IBAction func mudaMapELocaliza(_ sender: UISegmentedControl) {

            let index = sender.selectedSegmentIndex
            if index == 0 {
                self.map.mapType = .standard
            }
            else if index == 1 {
                self.map.mapType = .satellite
            }
            else if index == 2 {
                self.map.mapType = .hybrid
            }
            else  if index == 3 {
                
                if self.coordenadas != nil{
                let launchOptions = [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving]
                let placeMark = MKPlacemark(coordinate: self.coordenadas!, addressDictionary: nil)
                let mapItem = MKMapItem(placemark: placeMark)
                    mapItem.openInMaps(launchOptions: launchOptions)
             }
        }
        }
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            map.layer.borderColor =  UIColor.gray.cgColor
            map.layer.borderWidth = 1.0
            
            image.layer.cornerRadius = 15
            image.clipsToBounds = true
            image.layer.borderColor =  UIColor.gray.cgColor
            image.layer.borderWidth = 1.0
  
            if nomeAnt != nil {
                image.image = UIImage(named: nomeAnt!["imagem"] as! String)
                nomedoponto.text = nomeAnt!["nome"] as? String
                endereco.text = nomeAnt!["endereco"] as? String
                descricao.text = nomeAnt!["descricao"] as? String
            }
            getActionGeocoder()
        }
    
    func getActionGeocoder() {
            
            let geoCoder = CLGeocoder()
                geoCoder.geocodeAddressString(endereco.text!) {
                    (placemarks, error) in
                if let place = placemarks?[0] {
                    let location:CLLocation = place.location!
                    let coords = location.coordinate
                    print("Lat \(coords.latitude)  +  Long: \(coords.longitude)" )
                    
                    self.coordenadas = coords
                    
                    let amplitude = MKCoordinateSpan(latitudeDelta: 0.010, longitudeDelta: 0.010)
                    let regiao = MKCoordinateRegion(center: coords, span: amplitude)
                    
                    self.map.region = regiao
                    
                    let pin = MKPointAnnotation()
                    pin.coordinate = coords
                    pin.title = self.nomedoponto.text!
                    pin.subtitle = self.endereco.text!
                    self.map.addAnnotation(pin)
                }
            }
        }
}
