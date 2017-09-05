//
//  ReaderViewController.swift
//  PDFDownloader
//
//  Created by HartleyLabMacMini on 05/09/17.
//  Copyright © 2017 HartleyLabMacMini. All rights reserved.
//

import UIKit

class ReaderViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    var urlString:String! = "";
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let fileURL = URL(fileURLWithPath: self.urlString);
        let request = URLRequest(url: fileURL);
        
        self.webview.loadRequest(request);
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
