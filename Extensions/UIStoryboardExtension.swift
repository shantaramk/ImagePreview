//
//  AppDelegate.swift
//  ImagePreview
//
//  Created by Shantaram K on 17/05/19.
//  Copyright © 2019 Shantaram Kokate. All rights reserved.
//

import UIKit

extension UIStoryboard {
  
  class func controller<T: UIViewController>(storyboard: StoryboardEnum) -> T {
    return UIStoryboard(name: storyboard.rawValue, bundle: nil).instantiateViewController(withIdentifier: T.className) as! T
  }
  
  class func initial<T: UIViewController>(storyboard: StoryboardEnum) -> T {
    return UIStoryboard(name: storyboard.rawValue, bundle: nil).instantiateInitialViewController() as! T
  }
  
  enum StoryboardEnum: String {
    case auth = "Auth"
    case conversations = "Conversations"
    case profile = "Profile"
    case previews = "Previews"
    case messages = "Messages"
    case main = "Main"

  }
}
