//
//  ChatTextMessage.swift
//  RCToolsDemo
//
//  Created by Rex Tsao on 3/2/16.
//  Copyright (c) 2016 rexcao. All rights reserved.
//

import Foundation

class ChatTextMessage: ChatMessage {
    var text: String?
//    {
//        willSet {
//            self.attributedText(newValue!)
//        }
//    }
    var attrText: NSAttributedString?
    /// Size of text message.
    var messageSize: CGSize? {
        get {
            return self.computeMessageSize()
        }
        set {
        }
    }
    
    /// Merely for computing message size.
    private var label: UILabel?
    
    
    override init(ownerType: MessageOwnerType, messageType: MessageType, portrait: UIImage) {
        super.init(ownerType: ownerType, messageType: messageType, portrait: portrait)
        if self.label == nil {
            self.label = UILabel()
            self.label?.numberOfLines = 0
            self.label?.font = UIFont.systemFontOfSize(16)
        }
    }
    
    private func computeMessageSize() -> CGSize? {
//        self.label?.attributedText = self.attrText
        self.label?.text = self.text
        let messageSize = self.label?.sizeThatFits(CGSizeMake(UIScreen.mainScreen().bounds.width * 0.58, CGFloat(MAXFLOAT)))
        self.messageSize = messageSize
        RTPrint.shareInstance().prt("[ChatTextMessage] computeMessageSize: messageSize: \(messageSize)")
        return messageSize
    }
    
//    private func attributedText(text: String) {
//        self.attrText = NSAttributedString(string: text)
//    }
}