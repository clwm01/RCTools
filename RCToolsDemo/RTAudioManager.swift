//
//  RTAudioManager.swift
//  RCToolsDemo
//
//  Created by Rex Tsao on 10/5/2016.
//  Copyright © 2016 rexcao. All rights reserved.
//

import Foundation

class RTAudioManager {
    
    var player: RTAudioPlayback?
    
    
    func prepare(type: AudioItemType, path: String, enableProxymitySensor: Bool = true) {
        
        var url: NSURL?
        if type == .Remote {
            url = NSURL(string: path)
        } else  {
            url = NSURL(fileURLWithPath: path)
        }
        
        let item = RTAudioItem(type: type, url: url!)
        
        if self.player == nil {
            self.player = RTAudioPlayback()
        }
        self.player?.prepareItem(item)
        if enableProxymitySensor {
            self.player?.enableProximitySensor()
        }
    }
    
    func play() {
        self.player?.play()
    }
    
    func pause() {
        self.player?.pause()
    }
    
    func setCompletionHandler(handler: (() -> Void)?) {
        // Disclosure to force user to specify the handler.
        self.player!.completionHandler = handler
    }
    
    func headPhone() {
        self.player?.playWithHeadPhone()
    }
    
    func speaker() {
        self.player?.playWithSpeaker()
    }
}
