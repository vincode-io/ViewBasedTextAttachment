//
//  ViewController.swift
//  ViewBasedTextAttachment
//
//  Created by Maurice Parker on 10/28/21.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var textView: UITextView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		NSTextAttachment.registerViewProviderClass(TestAttachmentViewProvider.self, forFileType: "org.opml.opml")

		let mutableAttrString = NSMutableAttributedString(string: "Test View -> ", attributes: [.font : UIFont.preferredFont(forTextStyle: .body), .foregroundColor : UIColor.label])
		let attachment = TestTextAttachment(data: "Test Data".data(using: .utf8), ofType: "org.opml.opml")
		let imageAttrText = NSAttributedString(attachment: attachment)
		mutableAttrString.insert(imageAttrText, at: mutableAttrString.length)
		
		textView.attributedText = mutableAttrString
	}


}

