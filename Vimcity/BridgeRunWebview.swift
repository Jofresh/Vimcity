//
//  BridgeRunWebview.swift
//  Vimcity
//
//  Created by Josef Myers on 9/29/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class BridgeRunWebview: UIViewController {

    
    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let URL = Foundation.URL(string: "http://www.bridgerun.com")
        
        webView.loadRequest(URLRequest(url: URL!))
        
    }
    
    @IBAction func backButtonDidTouch(_ sender: AnyObject) {
        if(webView.canGoBack) {
            //Go back in webview history
            webView.goBack()
        } else {
            //Pop view controller to preview view controller
           _ = navigationController?.popViewController(animated: true)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden : Bool {
        return true
    }
}
