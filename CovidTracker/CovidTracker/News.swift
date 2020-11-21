//
//  News.swift
//  CovidTracker
//
//  Created by Asrith Sreeram on 11/14/20.
//  Copyright © 2020 Asrith Sreeram. All rights reserved.
//

import UIKit
import WebKit
class NewsPost: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        let url = URL(string: "https://www.cdc.gov/coronavirus/2019-nCoV/index.html")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        }
    }
