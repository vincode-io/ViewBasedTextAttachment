//
//  TestAttachmentViewProvider.swift
//  ViewBasedTextAttachment
//
//  Created by Maurice Parker on 10/28/21.
//

import UIKit

class TestAttachmentViewProvider: NSTextAttachmentViewProvider {
	
	override init(textAttachment: NSTextAttachment, parentView: UIView?, textLayoutManager: NSTextLayoutManager?, location: NSTextLocation) {
		super.init(textAttachment: textAttachment, parentView: parentView, textLayoutManager: textLayoutManager, location: location)
		
		view = UIView()
		view?.backgroundColor = .systemRed
		view?.isUserInteractionEnabled = false
		
		textAttachment.bounds = CGRect(x: 0, y: 0, width: 15, height: 15)
	}
	
}
