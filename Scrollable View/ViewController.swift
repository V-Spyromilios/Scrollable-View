//
//  ViewController.swift
//  Scrollable View
//
//  Created by Evangelos Spyromilios on 21.12.22.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet var textView: UITextView!
	override func viewDidLoad() {
		super.viewDidLoad()
		textView.delegate = self
		self.textView.clipsToBounds = true
		self.textView.sizeToFit()
	}
	
	var isOversised: Bool = false {
		didSet {
			textView.isScrollEnabled = isOversised
			textView.setNeedsUpdateConstraints()
		}
	}
}


extension ViewController: UITextViewDelegate {
	func textViewDidChange(_ textView: UITextView) {
		
		let maxHeight 	= view.frame.size.height - 180
		isOversised =  textView.contentSize.height >= maxHeight
	}
	
}






//
//		let estimatedSize 	= textView.sizeThatFits(CGSize(width: textView.frame.size.width, height: CGFloat.greatestFiniteMagnitude))
//
//
//		textView.frame.size = CGSize(width: max(estimatedSize.width, size), height: estimatedSize.height)
//		textView.translatesAutoresizingMaskIntoConstraints = true
//textView.sizeToFit()
//

//
//		//		textView.constraints.forEach { (constraint) in
//		//			if constraint.firstAttribute == .height {
//		//				constraint.constant = estimatedSize.height
//		//			}
//		//		}
//	}




//class ViewController: UIViewController {
//
//	@IBOutlet var scrollViewBottomConstraint: NSLayoutConstraint!
//	override func viewDidLoad() {
//		super.viewDidLoad()
//		//		if UIDevice.current.orientation.isLandscape {
//		//			scrollViewBottomConstraint.constant = 10
//		//
//		//		}
//	}
//}

//	override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//		super.viewWillTransition(to: size, with: coordinator)
//
//		if UIDevice.current.orientation.isLandscape {
//			scrollViewBottomConstraint.constant = 100
//		} else {
//			scrollViewBottomConstraint.constant = 220
//		}
//
//			//		if (size.width > self.view.frame.size.width) {
//			//			scrollViewBottomConstraint.constant = 200
//			//		}
//			//		else {
//			//			scrollViewBottomConstraint.constant = 50
//			//		}
//
//	}

