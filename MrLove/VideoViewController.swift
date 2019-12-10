//
//  VideoViewController.swift
//  MrLove
//
//  Created by User18 on 2019/12/6.
//  Copyright © 2019 User23. All rights reserved.
//

import UIKit
import SwiftUI
import AVKit
class VideoViewController: UIViewController {
 var looper: AVPlayerLooper?
    override func viewDidLoad() {
        super.viewDidLoad()
    
        NameButton.clipsToBounds = true
        NameButton.layer.cornerRadius = 10
        
        let url = URL(string: "https://r6---sn-5njj-u2xe.googlevideo.com/videoplayback?expire=1575973250&ei=Ih3vXZ_TCJKOyQWjhbTACw&ip=91.230.60.179&id=o-AOKOdfzdLlddCSCT-LmiAj2l5Ua-V8-16L01-1L_Kahh&itag=18&source=youtube&requiressl=yes&mime=video%2Fmp4&gir=yes&clen=625789&ratebypass=yes&dur=14.048&lmt=1575438924120220&fvip=6&fexp=23842630&beids=9466586&c=WEB&txp=6211222&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=ALgxI2wwRQIhAM04TYCi7YDpqYJMAsGXiUF1qMagx-Fe5iY2bleYZaLZAiAbCn9267Ez5F1fnVg6EKktG9HrcHFBqjLyH92yEYH0Ug%3D%3D&title=%E8%BC%B8%E5%85%A5%E4%BD%A0%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%81&cms_redirect=yes&mip=140.121.196.89&mm=31&mn=sn-5njj-u2xe&ms=au&mt=1575951523&mv=m&mvi=5&pl=18&lsparams=mip,mm,mn,ms,mv,mvi,pl&lsig=AHylml4wRQIgR7Y2UWdmsfe430U7WzbTzjK3yWcWz9ZlEQNsIJFEelECIQCrcGCuMa2AdeAvlTu7YNTmMnwxcU90PSc0Z8tSbDx6Fg==")
        let item = AVPlayerItem(url: url!)
        let player = AVQueuePlayer()
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = .resizeAspectFill
       
        playerLayer.frame = ViewVideo.bounds
        view.layer.insertSublayer(playerLayer,at: 0)
        looper = AVPlayerLooper(player: player, templateItem: item)
        
        
        player.play()
        
//        if let url = URL(string: "https://bit.ly/2Yn0y6L") {
//        let item = AVPlayerItem(url: url)
//        let player = AVQueuePlayer()
//        let playerLayer = AVPlayerLayer(player: player)
//
//                playerLayer.videoGravity = .resizeAspectFill
//                view.layer.addSublayer(playerLayer)
//                playerLayer.frame = video.bounds
//        looper = AVPlayerLooper(player: player, templateItem: item)
//        let playerViewController = AVPlayerViewController()
//        playerViewController.player = player
//        present(playerViewController, animated: true, completion: {
//           playerViewController.player?.play()
//        })
//        }
        
        // Do any additional setup after loading the view.
    }
  
    @IBOutlet var ViewVideo: UIView!
    @IBOutlet weak var NameTextField: UITextField!
    
    @IBOutlet weak var NameButton: UIButton!
    
    @IBAction func TurnToTia(_ sender: Any) {
    }
    
    //var looper: AVPlayerLooper?
    

   
    
    
    @IBSegueAction func nextpage(_ coder: NSCoder) -> UIViewController? {
        let NameString:String = NameTextField.text!
        let contentView = TiaPageView(content: NameString)
        return UIHostingController(coder: coder, rootView: contentView)
    }
    
    /*
    // MARK: - Navigation
        "https://bit.ly/2Yn0y6L"
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
