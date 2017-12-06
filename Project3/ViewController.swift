//
//  ViewController.swift
//  Project3
//
//  Created by iKnet on 16/7/6.
//  Copyright © 2016年 zzj. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var videoTableView: UITableView!
    
    var data = [
        
     //   video(image: "videoShot1", title: "Introduce 3DS Mario", source: "Youtube - 06:32"),
        //video(image: "videoShot2", title: "Emoji Among Us", source: "Vimeo - 3:34"),
        video(image: "videoShot3", title: "Seals Documentary", source: "Vine - 00:06"),
        video(image: "videoShot4", title: "Adventure Time", source: "Youtube - 02:39"),
        video(image: "videoShot5", title: "Facebook HQ", source: "Facebook - 10:20"),
        video(image: "videoShot6", title: "Lijiang Lugu Lake", source: "Allen - 20:30")
        
    ]
    
    var playerCon = AVPlayerViewController()
    var playerView = AVPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        videoTableView.delegate = self
        videoTableView.dataSource = self

    }
    

    @IBAction func playAction(_ sender: AnyObject) {
        let path = Bundle.main.path(forResource: "emoji zone", ofType: "mp4")
        
        playerView = AVPlayer(url: URL(fileURLWithPath: path!))
        
        playerCon.player = playerView
        
        self.present(playerCon, animated: true) {
            self.playerCon.player?.play()
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = videoTableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath)as! VideoCell
        
        let  video = data[indexPath.row]
        
        cell.videoSht.image = UIImage(named: video.image)
        cell.videoSource.text = video.source
        cell.videoTitleLabel.text = video.title
        
        
        return cell
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
