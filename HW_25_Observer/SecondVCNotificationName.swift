//
//  SecondVCNotificationName.swift
//  HW_25_Observer
//
//  Created by Oleg Dynnikov on 10/26/18.
//  Copyright © 2018 Oleg Dynnikov. All rights reserved.
//

import UIKit

class SecondVCNotificationName: UIViewController {

    @IBOutlet private weak var notifyLabel: UILabel!
    var label = "" {
        didSet {
            guard oldValue != label else { return }
            notifyLabel.text = Constants.defaultNotifyLabel + label
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(handleThirdVCNotification),
                                               name: Constants.thirdVCNotificationName, object: nil)
    }

    // MARK: Selectors
    @objc private func handleThirdVCNotification() {
        label = Constants.thirdVCNotificationName.rawValue
        view.backgroundColor = .green
    }

    // MARK: - Actions
    @IBAction private func sentNotify(_ sender: Any) {
        NotificationCenter.default.post(name: Constants.secondVCNotificationName, object: nil)
    }
}
