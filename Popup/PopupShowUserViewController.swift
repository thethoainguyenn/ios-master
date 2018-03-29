//
//  PopupShowUserViewController.swift
//  Demo2
//
//  Created by THOAILUN on 30/03/2018.
//  Copyright © 2018 THOAILUN. All rights reserved.
//

import UIKit

class PopupShowUserViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var viewPopup: UIView!
    // close popup
    @IBAction func btnClosePopup(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    

}
