//
//  TestTextAttachment.swift
//  ViewBasedTextAttachment
//
//  Created by Maurice Parker on 10/28/21.
//

import UIKit

public class TestTextAttachment: NSTextAttachment {
	
	public override func attachmentBounds(for textContainer: NSTextContainer?, proposedLineFragment lineFrag: CGRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> CGRect {
		return CGRect(x: 0, y: 0, width: 15, height: 15)
	}
	
}
