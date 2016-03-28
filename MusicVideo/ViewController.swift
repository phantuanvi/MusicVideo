//
//  ViewController.swift
//  MusicVideo
//
//  Created by Tuan-Vi Phan on 3/25/16.
//  Copyright © 2016 Tuan-Vi Phan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var videos = [Videos]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Call API
        let api = APIManager()
        api.loadData("https://itunes.apple.com/us/rss/topmusicvideos/limit=10/json", completion: didLoadData)
    }
    
    func didLoadData(videos: [Videos]) {
        
        print(reachabilityStatus)
       
        self.videos = videos
        
        for item in videos {
            print("name = \(item.vName)")
        }
        
        for var i = 0; i < videos.count; i++ {
            let video = videos[i]
            print("\(i) name = \(video.vName)")
        }
    }

}

