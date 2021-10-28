//
//  TestAttachmentViewProvider.swift
//  ViewBasedTextAttachment
//
//  Created by Maurice Parker on 10/28/21.
//

import UIKit

class TestAttachmentViewProvider: NSTextAttachmentViewProvider {
	
	override func loadView() {
		view = UIView()
		view?.backgroundColor = .systemRed
	}

}
