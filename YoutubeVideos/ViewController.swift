//
//  ViewController.swift
//  YoutubeVideos
//
//  Created by Bono Kim on 3/18/16.
//  Copyright © 2016 Engene. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {

    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var webView1: UIWebView!
    @IBOutlet weak var webView2: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let embedCode = "<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/_OBlgSz8sSM\" frameborder=\"0\" allowfullscreen></iframe>"
        
        self.webView1.loadHTMLString(embedCode, baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        
        searchBar.resignFirstResponder()
        
        let embedCode2 = "<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/" + (self.searchBar.text!) + "\" frameborder=\"0\" allowfullscreen></iframe>"
        self.webView2.loadHTMLString(embedCode2, baseURL: nil)
    }


}

