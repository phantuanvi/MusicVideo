//
//  MusicVideoTableViewCell.swift
//  MusicVideo
//
//  Created by Tuan-Vi Phan on 3/28/16.
//  Copyright © 2016 Tuan-Vi Phan. All rights reserved.
//

import UIKit

class MusicVideoTableViewCell: UITableViewCell {

    var video: Videos? {
        didSet {
            updateCell()
        }
    }
    
    @IBOutlet weak var musicImage: UIImageView!
    @IBOutlet weak var rank: UILabel!
    @IBOutlet weak var musicTitle: UILabel!
    
    func updateCell() {
        
        musicTitle.text = video?.vName
        rank.text = ("\(video!.vRank)")
        musicImage.image = UIImage(named:"imageNotAvailable")
    }
}
