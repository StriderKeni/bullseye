//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Eugenio Contreras on 3/2/19.
//  Copyright © 2019 Eugenio Contreras. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let htmlPath = Bundle.main.path(forResource: "BullsEye", ofType: "html") {
            
            let url = URL(fileURLWithPath: htmlPath)
            let request = URLRequest(url: url)
            webView.load(request)
        }

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func closeBtn() {
        dismiss(animated: true, completion: nil)
    }
    
    


}
