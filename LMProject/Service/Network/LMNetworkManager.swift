//
//  LMNetworkManager.swift
//  LMProject
//
//  Created by TapashM on 12/09/18.
//  Copyright © 2018 ITC Infotech. All rights reserved.
//

import Foundation
import Reachability

class LMNetworkManager:NSObject {

    var reachability: Reachability!

    // Create a singleton instance
    static let sharedInstance: NetworkManager = { return NetworkManager() }()
    private override init() {}
    
    // Register an observer for the network status
    NotificationCenter.default.addObserver(
    self,
    selector: #selector(networkStatusChanged(_:)),
    name: .reachabilityChanged,
    object: reachability
    )
    
    do {
    // Start the network status notifier
    try reachability.startNotifier()
    } catch {
    print("Unable to start notifier")
    }
}

@objc func networkStatusChanged(_ notification: Notification) {
    // Do something globally here!
}

func stopNotifier() -> Void {
    do {
        // Stop the network status notifier
        try (NetworkManager.sharedInstance.reachability).startNotifier()
    } catch {
        print("Error stopping notifier")
    }
}

// Network is reachable
class  func isReachable(completed: @escaping (NetworkManager) -> Void) {
    if (NetworkManager.sharedInstance.reachability).connection != .none {
        completed(NetworkManager.sharedInstance)
    }
}

// Network is unreachable
class  isUnreachable(completed: @escaping (NetworkManager) -> Void) {
    if (NetworkManager.sharedInstance.reachability).connection == .none {
        completed(NetworkManager.sharedInstance)
    }
}

// Network is reachable via WWAN/Cellular
class  isReachableViaWWAN(completed: @escaping (NetworkManager) -> Void) {
    if (NetworkManager.sharedInstance.reachability).connection == .cellular {
        completed(NetworkManager.sharedInstance)
    }
}

// Network is reachable via WiFi
class  isReachableViaWiFi(completed: @escaping (NetworkManager) -> Void) {
    if (NetworkManager.sharedInstance.reachability).connection == .wifi {
        completed(NetworkManager.sharedInstance)
    }
}
}
