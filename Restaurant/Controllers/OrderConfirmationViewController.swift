//
//  OrderConfirmationViewController.swift
//  Restaurant
//
//  Created by Андрей on 11.07.2022.
//

import UIKit

class OrderConfirmationViewController: UIViewController {
    
    @IBOutlet var timeRemainingLabel: UILabel!
    
    var minutes: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeRemainingLabel.text = "Thank you for your order! You waiting time is approximately \(minutes!) minutes."
    }

}
