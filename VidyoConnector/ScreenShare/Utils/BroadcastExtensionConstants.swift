//
//  BroadcastExtensionConstants.swift
//  BroadcastExtension
//
//  Created by Marta Korol on 25.07.2021.
//

import UIKit

struct BroadcastExtensionConstants {
    
    static let extensionFinishDelay: TimeInterval = 0.5
    
    static let bundleId = "com.vidyo.platform.ios.share"
    static let applicationGroupIdentifier = "group.vidyo.platform.share"
    static let broascastExtensionBundleId = "com.vidyo.platform.ios.share.BroadcastExtension"
    
    static let isBroadcastStarted = "isBroadcastStarted"
    static let ioSurfacePropertiesDefaultsKey = "IOSurfacePropertyKey"
    static let orientationDefaultsKey = "orientationDefaultsKey"
    static let frameDataLengthKey = "dataLength"
    static let broadcastExtensionLogsDirectoryName = "BroadcastExtensionLogs"
    static let frameDataStartMarker: Data = "frameDataStartMarker".data(using: .utf8)!
    static let frameDataEndMarker: Data = "frameDataEndMarker".data(using: .utf8)!
    
    struct CFNotificationNames {
        static let broadcastStarted = "\(bundleId).broadcastStarted"
        static let broadcastPaused = "\(bundleId).broadcastPaused"
        static let broadcastResumed = "\(bundleId).broadcastResumed"
        static let broadcastFinished = "\(bundleId).broadcastFinished"
        static let newFrameAvailable = "\(bundleId).newFrameAvailable"
        
        static let callEnded = "\(bundleId).callEnded"
        static let shareOverriden = "\(bundleId).shareOverriden"
        static let shareOverrideForbidden = "\(bundleId).shareOverrideForbidden"
        static let shareIsDisabled = "\(bundleId).shareIsDisabled"
        static let unknownError = "\(bundleId).unknownError"
    }
    
    struct Screenshare {
        static let startScreenShareTitle = "Start screen share"
        static let stopScreenShareTitle = "Stop screen share"
        static let frameRateDescription = "Normal Frame Rate is recommended for sharing static documents, presentations, images etc.\n\nHigh Frame Rate is recommended for sharing videos."
        static let startScreenShareMessage = "Tap the recording button below or in your Control Center to start sharing your device screen"
        static let stopScreenShareMessage = "Tap the recording button below or in your Control Center to stop sharing your device screen"
        
        static let noActiveConferenceError = "No active conference."
        static let systemError = "A system error occurred. Please restart your device."
    }
}
