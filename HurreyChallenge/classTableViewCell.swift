//
//  classTableViewCell.swift
//  HurreyChallenge
//
//  Created by Deltrin Sam on 19/04/22.
//

import UIKit
import CoreLocation
import MapKit

class classTableViewCell: UITableViewCell {

    @IBOutlet var className: UILabel!
    
    @IBOutlet var classNames: UILabel!
    
    @IBOutlet var sectionNames: UILabel!
    
    @IBOutlet var numberOfSections: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    // gotoemail
    private func openMap(latitude: CLLocationDegrees, longitude: CLLocationDegrees) {
        let regionDistance:CLLocationDistance = 10000
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegion(center: coordinates, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)
        ]
        let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Student is here"
        mapItem.openInMaps(launchOptions: options)
    }
    
    // Phone call Function
    private func callNumber(phoneNumber: String) {
        guard let url = URL(string: "telprompt://\(phoneNumber)"),
            UIApplication.shared.canOpenURL(url) else {
            return
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    private func emailSwitch(email: String) {
        if let url = URL(string: "mailto:\(email)") {
           UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
}
