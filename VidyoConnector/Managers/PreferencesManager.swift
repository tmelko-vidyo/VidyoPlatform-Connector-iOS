//
//  PreferencesManager.swift
//  VidyoConnector-iOS
//
//  Created by Marta Korol on 03.06.2021.
//

import Foundation

enum PreferencesOption {
    case mic
    case camera
    case speaker
}

class PreferencesManager {
      
    static let shared = PreferencesManager()
    
    var micState: DeviceState
    var cameraState: DeviceState
    var speakerState: DeviceState
    
    var devicesSelected: Bool
    var shouldUnmuteCameraOnForeground: Bool

    private init() {
        micState = .unmuted
        cameraState = .unmuted
        speakerState = .unmuted
        devicesSelected = true
        shouldUnmuteCameraOnForeground = false
    }
    
    func updateDisabledStates() {
        micState.enableIfNeeded()
        cameraState.enableIfNeeded()
    }
    
    func changeVisualState(for option: PreferencesOption, isDisabled: Bool? = nil) {
        switch option {
        case .mic: micState.changeState(isDisabled: isDisabled)
        case .camera: cameraState.changeState(isDisabled: isDisabled)
        case .speaker: speakerState.changeState()
        }
    }
    
    func getCurrentState(of option: PreferencesOption) -> Bool {
        switch option {
        case .mic: return micState.bool
        case .camera: return cameraState.bool
        case .speaker: return speakerState.bool
        }
    }
    
    func getProperImageName(for option: PreferencesOption) -> String {
        var optionOff = String()
        let isOnCall: Bool = ConnectorManager.shared.connectionManager.connectionState.bool
        
        switch option {
        case .speaker:
            optionOff = isOnCall ? Constants.Icon.speakerMuted : Constants.Icon.speakerDisabled
            return speakerState == .unmuted ? Constants.Icon.speakerOn : optionOff
        case .mic:
            optionOff = (isOnCall && micState == .muted) ? Constants.Icon.micMuted : Constants.Icon.micDisabled
            return micState == .unmuted ? Constants.Icon.micOn : optionOff
        case .camera:
            optionOff = (isOnCall && cameraState == .muted) ? Constants.Icon.cameraMuted : Constants.Icon.cameraDisabled
            return cameraState == .unmuted ? Constants.Icon.cameraOn : optionOff
        }
    }
}
