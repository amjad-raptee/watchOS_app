//
//  WatchConnect.swift
//  DinoWatch Watch App
//
//  Created by Raptee Developer on 07/09/24.
//

//import Foundation
//import WatchConnectivity
//
//class InterfaceController: WKInterfaceController, WCSessionDelegate {
//    
//    override func awake(withContext context: Any?) {
//        super.awake(withContext: context)
//        
//        if WCSession.isSupported() {
//            WCSession.default.delegate = self
//            WCSession.default.activate()
//        }
//    }
//
//    func sendMessageToPhone(data: [String: Any]) {
//        if WCSession.default.isReachable {
//            WCSession.default.sendMessage(data, replyHandler: nil) { error in
//                print("Error sending message: \(error)")
//            }
//        }
//    }
//
//    // WCSessionDelegate method to handle activation
//    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
//        if let error = error {
//            print("Watch session activation error: \(error.localizedDescription)")
//        }
//    }
//}

