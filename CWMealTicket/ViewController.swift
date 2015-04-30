//
//  ViewController.swift
//  CWMealTicket
//
//  Created by 安宅 正之 on 2015/02/11.
//  Copyright (c) 2015年 Masayuki Ataka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var priceText: UITextField!
    @IBOutlet private weak var placeText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.priceText.becomeFirstResponder();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func send() {
        let price :String = self.priceText.text;
        let place :String = self.placeText.text;
        let message :String = "\(price)\n\(place)"
        
        let httpClient = CWHttpClient()
        httpClient.sendMessage(message)
    }
    
    // MARK: - Action

    @IBAction private func send(sender: AnyObject) {
        self.send();
    }

}

