//
//  OpenPayService.swift
//  TomachelaApp
//
//  Created by Ricardo Yepez on 10/27/18.
//  Copyright © 2018 Oliver Jordy Pérez Escamilla. All rights reserved.
//

import Foundation

import UIKit
import Openpay

//class PaymentViewController: UIViewController {
//
//    var openpay: Openpay!
//    var sessionID: String = ""
//    var tokenID: String = ""
//    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
//    @IBOutlet weak var continueButton: UIButton!
//    @IBOutlet weak var totalAmount: UILabel!
//
//    static let MERCHANT_ID = "mi93pk0cjumoraf08tqt"             // Generated in Openpay account registration
//    static let API_KEY = "pk_92e31f7c77424179b7cd451d21fbb771"  // Generated in Openpay account registration
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        activityIndicator.isHidden = true
//        openpay = Openpay(withMerchantId: PaymentViewController.MERCHANT_ID, andApiKey: PaymentViewController.API_KEY, isProductionMode: false, isDebug: true)
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
//
//    func showBlackBox(show: Bool) {
//        activityIndicator.isHidden = !show
//        continueButton.isEnabled = !show
//    }
//
//
//    @IBAction func sendData(_ sender: AnyObject) {
//        showBlackBox(show: true)
//        openpay.createDeviceSessionId(successFunction: successSessionID, failureFunction: failSessionID)
//
//    }
//
//    func successSessionID(sessionID: String) {
//        showBlackBox(show: false)
//        print("Success SessionID...")
//        print("SessionID: \(sessionID)")
//
//        self.sessionID = sessionID
//        openpay.loadCardForm(in: self, successFunction: successCard, failureFunction: failCard, formTitle: "TomaChela Pay")
//    }
//
//    func failSessionID(error: NSError) {
//        print("Fail SessionID...")
//        print("\(error.code) - \(error.localizedDescription)")
//        //        DispatchQueue.main.sync() {
//        showBlackBox(show: false)
//        if let resultController = storyboard!.instantiateViewController(withIdentifier: "ResultController") as? ResultViewController {
//            present(resultController, animated: true, completion: nil)
//            resultController.textBox.text = String(format: NSLocalizedString("session.error", bundle: Bundle.main, comment: "Error JSON"), error.localizedDescription)
//        }
//        //        }
//    }
//    func successCard() {
//        print("Success Card Capture...")
//        showBlackBox(show: true)
//
//        let addressDictionary: Dictionary<String, Any> = [
//            "postal_code":"76000",
//            "line1":"Av 5 de Febrero",
//            "line2":"Roble 207",
//            "line3":"Col. Felipe",
//            "city":"Querétaro",
//            "state":"Querétaro",
//            "country_code":"MX"
//        ]
//        openpay.createTokenWithCard(address: OPAddress(with: addressDictionary), successFunction: successToken, failureFunction: failToken)
//    }
//
//    func failCard(error: NSError) {
//        print("Fail Card Capture...")
//        print("\(error.code) - \(error.localizedDescription)")
//    }
//
//    func successToken(token: OPToken) {
//        print("Success Token...")
//        print("TokenID: \(token.id)")
//        tokenID = token.id
//        DispatchQueue.main.sync() {
//            showBlackBox(show: false)
//            if let resultController = storyboard!.instantiateViewController(withIdentifier: "ResultController") as? ResultViewController {
//                present(resultController, animated: true, completion: nil)
//
//                resultController.textBox.text = "Listo! \nPasa con el bartender y \nTomaChela"
//
//                //                resultController.textBox.text = String(format: NSLocalizedString("token.success", bundle: Bundle.main, comment: "Error JSON"), sessionID, token.id)
//            }
//        }
//    }
//
//    func failToken(error: NSError) {
//        print("Fail Token...")
//        print("\(error.code) - \(error.localizedDescription)")
//        DispatchQueue.main.sync() {
//            showBlackBox(show: false)
//            if let resultController = storyboard!.instantiateViewController(withIdentifier: "ResultController") as? ResultViewController {
//                present(resultController, animated: true, completion: nil)
//                resultController.textBox.text = String(format: NSLocalizedString("token.error", bundle: Bundle.main, comment: "Error JSON"), error.localizedDescription)
//            }
//        }
//    }
//    @IBAction func hideButtonAction(_ sender: AnyObject) {
//
//        openpay.getTokenWithId(tokenId: "kd73obctnpmdbti1ncmr", successFunction: successTokenWithID, failureFunction: failToken)
//    }
//
//
//    func successTokenWithID(token: OPToken) {
//        print("Success Token With SessionID...")
//        print("SessionID: \(token.id)")
//        print("Card INFO: \(token.card.number) \(token.card.type)")
//        DispatchQueue.main.sync() {
//            showBlackBox(show: false)
//            if let resultController = storyboard!.instantiateViewController(withIdentifier: "ResultController") as? ResultViewController {
//                present(resultController, animated: true, completion: nil)
//                resultController.textBox.text = String(format: NSLocalizedString("tokenid.success", bundle: Bundle.main, comment: "Error JSON"), token.id, token.card.number, token.card.holderName, token.card.type.rawValue)
//            }
//        }
//    }
//
//}
//
