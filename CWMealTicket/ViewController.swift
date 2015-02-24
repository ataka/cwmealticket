//
//  ViewController.swift
//  CWMealTicket
//
//  Created by 安宅 正之 on 2015/02/11.
//  Copyright (c) 2015年 MasayukiAtaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceText: UITextField!
    @IBOutlet weak var placeText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func send() {
        let price :String = self.priceText.text;
        let place :String = self.placeText.text;
        
        
    }
    
    // MARK: - Action

    @IBAction func send(sender: AnyObject) {
        send();
    }

}

