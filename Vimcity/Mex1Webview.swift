//
//  Mex1Webview.swift
//  Vimcity
//
//  Created by Josef Myers on 9/28/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class Mex1Webview: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    
  override func viewDidLoad() {
        super.viewDidLoad()
        
        let URL = Foundation.URL(string: "http://www.mex1coastalcantina.com")
        
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
