//
//  ViewController.swift
//  ImagePreview
//
//  Created by Shantaram K on 17/05/19.
//  Copyright © 2019 Shantaram Kokate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showProfile() {
        let vc: ImagePreviewController = UIStoryboard.controller(storyboard: .main)
       // vc.imageURLString = message.profilePicLink
        vc.image = #imageLiteral(resourceName: "car")
         self.present(vc, animated: true, completion: nil)
    }

}

