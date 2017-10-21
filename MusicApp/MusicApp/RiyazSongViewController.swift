//
//  RiyazSongViewController.swift
//  MusicApp
//
//  Created by Farooque on 14/10/17.
//  Copyright © 2017 riyaz. All rights reserved.
//

import UIKit
import AVFoundation

class RiyazSongViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    var player : AVAudioPlayer!
    var timer : Timer!
    var duration : Double!
    override func viewDidLoad() {
        super.viewDidLoad()
        songNote()
    Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(RiyazSongViewController.playSong), userInfo: nil, repeats: false)
    self.navigationController?.navigationBar.isHidden = true
    }
    
    // MARK :- Stop Function
    
    @IBAction func stopAnimation(_ sender: Any) {
      self.scrollView.layer.speed = 0
       player.stop()
    }
    
    // MARK :- Play Song Function
    
    func playSong(){
        guard let url = Bundle.main.url(forResource: "SaReGa_SaReGaMa_2b", withExtension: "wav") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            let time = Bundle.main.path(forResource: "SaReGa_SaReGaMa_2b", ofType: "wav")
            let asset = AVURLAsset.init(url: URL(fileURLWithPath: time!))
            duration = asset.duration.seconds
            player.play()
            noteAnimation()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    // MARK :- Songnote Animation Function
    
    func noteAnimation(){
    UIView.animate(withDuration: duration - 1.5 , delay: 1.0, options: .curveLinear, animations: {
    self.scrollView.contentOffset = CGPoint(x: self.duration*100 - 150, y : 0)
       
       })
    
}
    // MARK :- Back Button Function
    
    @IBAction func didTapOnBackButton(_ sender: Any) {
    self.navigationController?.popViewController(animated: true)
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
         self.navigationController?.navigationBar.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    // MARK :- Creating Song note Function
    
    func songNote(){
    for index in 1...3{
            let view = UIView()
            view.frame.origin.y = self.view.frame.size.height/2 + 120
            view.frame.size.height = 10
            switch index {
            case 1:
            view.frame.size.width = 100
            view.frame.origin.x = 300
            case 2:
            view.frame.size.width = 100
            view.frame.origin.x = 600
            case 3:
            view.frame.size.width = 150
            view.frame.origin.x = 7300
            default:
                break
            }
            view.layer.cornerRadius = 5
            view.backgroundColor = UIColor.red
            let lable = UILabel()
            lable.text = "S"
            lable.frame = CGRect(x: 0 , y: -20 , width : 100 , height : 20)
            lable.font = UIFont.boldSystemFont(ofSize: 12)
            lable.textColor = UIColor.black
            view.addSubview(lable)
            scrollView.addSubview(view)
        }
        for index in 1...7{
            let view = UIView()
            view.frame.origin.y = self.view.frame.size.height/2 + 79
            view.frame.size.width = 100
            view.frame.size.height = 10
            switch index {
            case 1:
            view.frame.origin.x = 400
            case 2:
            view.frame.origin.x = 700
            case 3:
            view.frame.origin.x = 1000
            case 4:
             view.frame.origin.x = 1300
            case 5:
            view.frame.origin.x = 6600
            case 6:
            view.frame.origin.x = 6900
            case 7:
            view.frame.origin.x = 7200
            default:
                break
            }
            view.layer.cornerRadius = 5
            view.backgroundColor = UIColor.orange
            let lable = UILabel()
            lable.text = "R"
            lable.frame = CGRect(x: 0 , y: -20 , width : 100 , height : 20)
            lable.font = UIFont.boldSystemFont(ofSize: 12)
            lable.textColor = UIColor.black
            view.addSubview(lable)
            scrollView.addSubview(view)
        }
        for index in 1...11{
            let view = UIView()
            view.frame.origin.y = self.view.frame.size.height/2 + 39
            view.frame.size.width = 100
            view.frame.size.height = 10
            switch index {
            case 1:
                view.frame.origin.x = 500
            case 2:
                view.frame.origin.x = 800
            case 3:
                view.frame.origin.x = 1100
            case 4:
                view.frame.origin.x = 1400
            case 5:
                view.frame.origin.x = 1700
            case 6:
                view.frame.origin.x = 2000
            case 7:
                view.frame.origin.x = 5900
            case 8:
                view.frame.origin.x = 6200
            case 9:
                view.frame.origin.x = 6500
            case 10:
                view.frame.origin.x = 6800
            case 11:
                view.frame.origin.x = 7100
            default:
                break
            }
            view.layer.cornerRadius = 5
            view.backgroundColor = UIColor.black
            let lable = UILabel()
            lable.text = "G"
            lable.frame = CGRect(x: 0 , y: -20 , width : 100 , height : 20)
            lable.font = UIFont.boldSystemFont(ofSize: 12)
            lable.textColor = UIColor.black
            view.addSubview(lable)
            scrollView.addSubview(view)
        }
        
        for index in 1...14{
            let view = UIView()
            view.frame.origin.y = self.view.frame.size.height/2 - 2
            view.frame.size.width = 100
            view.frame.size.height = 10
            switch index {
            case 1:
                view.frame.origin.x = 900
            case 2:
                view.frame.origin.x = 1200
            case 3:
                view.frame.origin.x = 1500
            case 4:
                view.frame.origin.x = 1800
            case 5:
                view.frame.origin.x = 2100
            case 6:
                view.frame.origin.x = 2400
            case 7:
                view.frame.origin.x = 2700
            case 8:
                view.frame.origin.x = 5200
            case 9:
                view.frame.origin.x = 5500
            case 10:
                view.frame.origin.x = 5800
            case 11:
                view.frame.origin.x = 6100
            case 12:
                view.frame.origin.x = 6400
            case 13:
                view.frame.origin.x = 6700
            case 14:
                view.frame.origin.x = 7000
            default:
                break
            }
            view.layer.cornerRadius = 5
            view.backgroundColor = UIColor.blue
            let lable = UILabel()
            lable.text = "M"
            lable.frame = CGRect(x: 0 , y: -20 , width : 100 , height : 20)
            lable.font = UIFont.boldSystemFont(ofSize: 12)
            lable.textColor = UIColor.black
            view.addSubview(lable)
            scrollView.addSubview(view)
        }
        
        for index in 1...14{
            let view = UIView()
            view.frame.origin.y = self.view.frame.size.height/2 - 36
            view.frame.size.width = 100
            view.frame.size.height = 10
            switch index {
            case 1:
                view.frame.origin.x = 1600
            case 2:
                view.frame.origin.x = 1900
            case 3:
                view.frame.origin.x = 2200
            case 4:
                view.frame.origin.x = 2500
            case 5:
                view.frame.origin.x = 2800
            case 6:
                view.frame.origin.x = 3100
            case 7:
                view.frame.origin.x = 3400
            case 8:
                view.frame.origin.x = 4500
            case 9:
                view.frame.origin.x = 4800
            case 10:
                view.frame.origin.x = 5100
            case 11:
                view.frame.origin.x = 5400
            case 12:
                view.frame.origin.x = 5700
            case 13:
                view.frame.origin.x = 6000
            case 14:
                view.frame.origin.x = 6300
            default:
                break
            }
            
            view.layer.cornerRadius = 5
            view.backgroundColor = UIColor.green
            let lable = UILabel()
            lable.text = "P"
            lable.frame = CGRect(x: 0 , y: -20 , width : 100 , height : 20)
            lable.font = UIFont.boldSystemFont(ofSize: 12)
            lable.textColor = UIColor.black
            view.addSubview(lable)
            scrollView.addSubview(view)
        }
        
        for index in 1...11{
            let view = UIView()
            view.frame.origin.y = self.view.frame.size.height/2 - 76
            view.frame.size.width = 100
            view.frame.size.height = 10
            switch index {
            case 1:
                view.frame.origin.x = 2300
            case 2:
                view.frame.origin.x = 2600
            case 3:
                view.frame.origin.x = 2900
            case 4:
                view.frame.origin.x = 3200
            case 5:
                view.frame.origin.x = 3500
            case 6:
                view.frame.origin.x = 4100
            case 7:
                view.frame.origin.x = 4400
            case 8:
                view.frame.origin.x = 4700
            case 9:
                view.frame.origin.x = 5000
            case 10:
                view.frame.origin.x = 5300
            case 11:
                view.frame.origin.x = 5600
            default:
                break
            }
            view.layer.cornerRadius = 5
            view.backgroundColor = UIColor.purple
            let lable = UILabel()
            lable.text = "D"
            lable.frame = CGRect(x: 0 , y: -20 , width : 100 , height : 20)
            lable.font = UIFont.boldSystemFont(ofSize: 12)
            lable.textColor = UIColor.black
            view.addSubview(lable)
            scrollView.addSubview(view)
        }
        
        for index in 1...7{
            let view = UIView()
            view.frame.origin.y = self.view.frame.size.height/2 - 116
            view.frame.size.width = 100
            view.frame.size.height = 10
            switch index {
            case 1:
                view.frame.origin.x = 3000
            case 2:
                view.frame.origin.x = 3300
            case 3:
                view.frame.origin.x = 3600
            case 4:
                view.frame.origin.x = 4000
            case 5:
                view.frame.origin.x = 4300
            case 6:
                view.frame.origin.x = 4600
            case 7:
                view.frame.origin.x = 4900
            default:
                break
            }
            
            view.layer.cornerRadius = 5
            view.backgroundColor = UIColor.brown
            let lable = UILabel()
            lable.text = "N"
            lable.frame = CGRect(x: 0 , y: -20 , width : 100 , height : 20)
            lable.font = UIFont.boldSystemFont(ofSize: 12)
            lable.textColor = UIColor.black
            view.addSubview(lable)
            scrollView.addSubview(view)
        }
        
        for index in 1...3{
            let view = UIView()
            view.frame.origin.y = self.view.frame.size.height/2 - 148
            view.frame.size.height = 10
            switch index {
            case 1:
                view.frame.size.width = 200
                view.frame.origin.x = 3700
            case 2:
                 view.frame.size.width = 100
                view.frame.origin.x = 3900
            case 3:
                 view.frame.size.width = 100
                view.frame.origin.x = 4200
            default:
                break
            }
            view.layer.cornerRadius = 5
            view.backgroundColor = UIColor.yellow
            let lable = UILabel()
            lable.text = "S'"
            if self.view.frame.size.width == 568{
            lable.frame = CGRect(x: 0 , y: -15 , width : 100 , height : 20)
            }
            else{
               lable.frame = CGRect(x: 0 , y: -20 , width : 100 , height : 20)
            }
            lable.font = UIFont.boldSystemFont(ofSize: 12)
            lable.textColor = UIColor.black
            view.addSubview(lable)
            scrollView.addSubview(view)
        }
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
