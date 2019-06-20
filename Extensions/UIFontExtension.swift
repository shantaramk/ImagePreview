//
//  AppDelegate.swift
//  ImagePreview
//
//  Created by Shantaram K on 17/05/19.
//  Copyright © 2019 Shantaram Kokate. All rights reserved.
//

import UIKit

extension UIFont {
  
  var bold: UIFont {
    return with(traits: .traitBold)
  }
  
  var regular: UIFont {
    var fontAtrAry = fontDescriptor.symbolicTraits
    fontAtrAry.remove([.traitBold])
    let fontAtrDetails = fontDescriptor.withSymbolicTraits(fontAtrAry)
    return UIFont(descriptor: fontAtrDetails!, size: pointSize)
  }
  
  func with(traits: UIFontDescriptor.SymbolicTraits) -> UIFont {
    guard let descriptor = fontDescriptor.withSymbolicTraits(traits) else {
      return self
    }
    return UIFont(descriptor: descriptor, size: 0)
  }
}
