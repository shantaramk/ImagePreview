//
//  AppDelegate.swift
//  ImagePreview
//
//  Created by Shantaram K on 17/05/19.
//  Copyright © 2019 Shantaram Kokate. All rights reserved.
//

import Foundation

extension Dictionary {
  
  var data: Data? {
    return try? JSONSerialization.data(withJSONObject: self, options: .prettyPrinted)
  }
}
