//
//  ThirdVCNotificationName.swift
//  HW_25_Observer
//
//  Created by Oleg Dynnikov on 10/26/18.
//  Copyright © 2018 Oleg Dynnikov. All rights reserved.
//

import UIKit

class ThirdVCNotificationName: UIViewController {

    @IBOutlet private weak var notifyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: Actions
    @IBAction private func sentNotify(_ sender: Any) {
        NotificationCenter.default.post(name: Constants.thirdVCNotificationName, object: nil)
    }
}
