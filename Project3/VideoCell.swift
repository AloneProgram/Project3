//
//  VideoCell.swift
//  Project3
//
//  Created by iKnet on 16/7/6.
//  Copyright © 2016年 zzj. All rights reserved.
//

import UIKit

struct video {
    let image: String
    let title: String
    let source: String
    
    
}

class VideoCell: UITableViewCell {

    
    @IBOutlet weak var videoSht: UIImageView!
    @IBOutlet weak var videoSource: UILabel!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
