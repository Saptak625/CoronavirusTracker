//
//  News.swift
//  CovidTracker
//
//  Created by Asrith Sreeram on 11/14/20.
//  Copyright © 2020 Asrith Sreeram. All rights reserved.
//

import Foundation

class NewsPost{
    let title: String
    let body: String
    let image: Image
    
    init(_ title: String, _ body: String, _ image: Image){
        self.title=title
        self.body=body
        self.image=image
    }
    
    func display(){
        //Display and format UI
    }
}

//Temporary Implementation of image
class Image{
    
}
