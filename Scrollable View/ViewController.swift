//
//  ViewController.swift
//  Scrollable View
//
//  Created by Evangelos Spyromilios on 21.12.22.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet var scrollViewBottomConstraint: NSLayoutConstraint!
	override func viewDidLoad() {
		super.viewDidLoad()
		//		if UIDevice.current.orientation.isLandscape {
		//			scrollViewBottomConstraint.constant = 10
		//
		//		}
	}
	
	override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
		super.viewWillTransition(to: size, with: coordinator)
		
		if UIDevice.current.orientation.isLandscape {
			scrollViewBottomConstraint.constant = 100
		} else {
			scrollViewBottomConstraint.constant = 220
		}
			
			//		if (size.width > self.view.frame.size.width) {
			//			scrollViewBottomConstraint.constant = 200
			//		}
			//		else {
			//			scrollViewBottomConstraint.constant = 50
			//		}
		
	}
}
