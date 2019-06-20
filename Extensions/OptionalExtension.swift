//
//  AppDelegate.swift
//  ImagePreview
//
//  Created by Shantaram K on 17/05/19.
//  Copyright © 2019 Shantaram Kokate. All rights reserved.
//

import Foundation

extension Optional {
  var isNone: Bool {
    return self == nil
  }
  
  var isSome: Bool {
    return self != nil
  }
}
