//
//  AppDelegate.swift
//  ImagePreview
//
//  Created by Shantaram K on 17/05/19.
//  Copyright © 2019 Shantaram Kokate. All rights reserved.
//

import Foundation
import CoreLocation

extension String {
  
  func isValidEmail() -> Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailTest.evaluate(with: self)
  }
  
  var location: CLLocationCoordinate2D? {
    let coordinates = self.components(separatedBy: ":")
    guard coordinates.count == 2 else { return nil }
    return CLLocationCoordinate2D(latitude: Double(coordinates.first!)!, longitude: Double(coordinates.last!)!)
  }
}
