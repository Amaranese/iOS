
import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    @IBOutlet weak var mapa: MKMapView!
    let manager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.delegate = self
        manager.requestWhenInUseAuthorization()
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        print("didChangeAuthorization")
        manager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {        
        //pin(localizacion: locations.first!)
        indicaciones(localizacion: locations.first!)
    }
    
    func pin(localizacion: CLLocation) {
        //let localizacion = CLLocationCoordinate2DMake(40, -4)
        let span = MKCoordinateSpanMake(0.02, 0.02)
        let region = MKCoordinateRegion(center: localizacion.coordinate, span: span)
        mapa.setRegion(region, animated: true)
        
        let anotacion = MKPointAnnotation()
        anotacion.coordinate = localizacion.coordinate
        anotacion.title = "Sitio"
        anotacion.subtitle = "Maravilloso"
        mapa.addAnnotation(anotacion)
    }
    
    func indicaciones(localizacion: CLLocation) {
        //let coordenadasOrigen = CLLocationCoordinate2D(latitude: localizacion.coordinate.latitude, longitude: localizacion.coordinate.longitude)
        mapa.delegate = self
        let coordenadasOrigen = CLLocationCoordinate2DMake(25.0305, 121.5360)
        let coordenadasDestino = CLLocationCoordinate2DMake(24.9511, 121.2358)
        mapa.setRegion(MKCoordinateRegionMake(coordenadasOrigen, MKCoordinateSpanMake(0.7,0.7)), animated: true)
        let origen = MKMapItem(placemark: MKPlacemark(coordinate: coordenadasOrigen))
        let destino = MKMapItem(placemark: MKPlacemark(coordinate: coordenadasDestino))
        let peticion = MKDirectionsRequest()
        peticion.source = origen
        peticion.destination = destino
        peticion.transportType = .any
        
        let indicaciones = MKDirections(request: peticion)
        indicaciones.calculate { (respuesta, error) in
            if let error = error {
                print(error.localizedDescription)
            } else {
                self.mapa.add((respuesta?.routes[0].polyline)!)
            }
        }
        
    }

    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let renderer = MKPolylineRenderer(overlay: overlay)
        renderer.strokeColor = UIColor.red
        renderer.lineWidth = 5
        return renderer
    }
}

