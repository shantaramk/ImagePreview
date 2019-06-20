//
//  AppDelegate.swift
//  ImagePreview
//
//  Created by Shantaram K on 17/05/19.
//  Copyright © 2019 Shantaram Kokate. All rights reserved.
//

import UIKit

class ImagePreviewController: UIViewController, UIScrollViewDelegate {
  
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var scrollView: UIScrollView!
  var imageURLString: String?
    var image: UIImage?
    
  @IBAction func closePressed(_ sender: Any) {
    dismiss(animated: true, completion: nil)
  }
  
  @IBAction func doubleTapGesture(_ sender: UITapGestureRecognizer) {
    if scrollView.zoomScale == 1 {
      scrollView.zoom(to: zoomRectForScale(scale: scrollView.maximumZoomScale, center: sender.location(in: sender.view)), animated: true)
      return
    }
    scrollView.setZoomScale(1, animated: true)
  }
  
  private func zoomRectForScale(scale: CGFloat, center: CGPoint) -> CGRect {
    var zoomRect = CGRect.zero
    zoomRect.size.height = imageView.frame.size.height / scale
    zoomRect.size.width  = imageView.frame.size.width  / scale
    let newCenter = imageView.convert(center, from: scrollView)
    zoomRect.origin.x = newCenter.x - (zoomRect.size.width / 2.0)
    zoomRect.origin.y = newCenter.y - (zoomRect.size.height / 2.0)
    return zoomRect
  }
  
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return imageView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
   // imageView.setImage(url: URL(string: imageURLString ?? ""))
    imageView.image = image
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    modalTransitionStyle = .crossDissolve
    modalPresentationStyle = .overFullScreen
  }
}
