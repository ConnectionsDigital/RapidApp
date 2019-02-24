//
//  ContactViewController.swift
//  ContactForm
//
//  Created by Kenneth W Jackson on 11/17/18.
//  Copyright © 2018 Connections Digital. All rights reserved.
//

import UIKit
import MessageUI

class ContactViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var messageField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set form colors
        nameField!.layer.borderColor = UIColor.darkGray.cgColor
        nameField!.layer.borderWidth = 1
        emailField!.layer.borderColor = UIColor.darkGray.cgColor
        emailField!.layer.borderWidth = 1
        messageField!.layer.borderColor = UIColor.darkGray.cgColor
        messageField!.layer.borderWidth = 1
    }

    @IBAction func sendButton(_ sender: Any) {
        // Format and send email message
        let toRecipients = ["service@connections.digital"]
        let mc: MFMailComposeViewController = MFMailComposeViewController()
        mc.mailComposeDelegate = self
        mc.setToRecipients(toRecipients)
        mc.setSubject("Message from \(nameField.text!) on app.")
        mc.setMessageBody("Name: \(nameField.text!) \n\nMessage: \(messageField.text!)", isHTML: false)
        self.present(mc, animated: true, completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        // Get message status
        switch result.rawValue {
        case MFMailComposeResult.cancelled.rawValue:
            print("Canceled")
        case MFMailComposeResult.failed.rawValue:
            print("Failed")
        case MFMailComposeResult.saved.rawValue:
            print("Saved")
        case MFMailComposeResult.sent.rawValue:
            print("Sent")
        default:
            break
        }
        // Dismiss the mail compose view controller.
        self.dismiss(animated: true, completion: nil)
    }
    
    // Dismiss keyboard
    @IBAction func dismissKeyboard(_ sender: Any) {
        self.resignFirstResponder()
    }
}




    


