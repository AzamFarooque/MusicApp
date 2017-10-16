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
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width : 7700 , height : self.view.frame.size.height - 50)
        playSong()
        
        for index in 1...3{
            let view = UIView()
            if index == 1{
              
            view.frame = CGRect(x: 100 ,y : self.view.frame.size.height - 138 , width : 100 , height : 10)
                
            }
            if index == 2{
            view.frame = CGRect(x:  400 ,y : self.view.frame.size.height - 138 , width : 100 , height : 10)
            }
            if index == 3{
            view.frame = CGRect(x:  7300 ,y : self.view.frame.size.height - 138 , width : 100 , height : 10)
            }
            view.layer.cornerRadius = 5
            view.backgroundColor = UIColor.red
            scrollView.addSubview(view)

            
        }
        
            for index in 1...7{
            let view = UIView()
                 if index == 1{
                view.frame = CGRect(x: 200 ,y : self.view.frame.size.height - 178 , width : 100 , height : 10)
                }
                 if index == 2{
                    view.frame = CGRect(x:  500 ,y : self.view.frame.size.height - 178 , width : 100 , height : 10)
                }
                if index == 3{
                    view.frame = CGRect(x:  800 ,y : self.view.frame.size.height - 178 , width : 100 , height : 10)
                }
                if index == 4{
                    view.frame = CGRect(x:  1100 ,y : self.view.frame.size.height - 178 , width : 100 , height : 10)
                }
                if index == 5{
                    view.frame = CGRect(x:  6400 ,y : self.view.frame.size.height - 178 , width : 100 , height : 10)
                }
                if index == 6{
                    view.frame = CGRect(x:  6700 ,y : self.view.frame.size.height - 178 , width : 100 , height : 10)
                }
                if index == 7{
                    view.frame = CGRect(x:  7000 ,y : self.view.frame.size.height - 178 , width : 100 , height : 10)
                }
                
                view.layer.cornerRadius = 5
                view.backgroundColor = UIColor.orange
                scrollView.addSubview(view)
            }
        
        for index in 1...11{
            
            let view = UIView()
            if index == 1{
                view.frame = CGRect(x: 300 ,y : self.view.frame.size.height - 228 , width : 100 , height : 10)
            }
            if index == 2{
                view.frame = CGRect(x:  600 ,y : self.view.frame.size.height - 228 , width : 100 , height : 10)
            }
            if index == 3{
                view.frame = CGRect(x:  900 ,y : self.view.frame.size.height - 228 , width : 100 , height : 10)
            }
            if index == 4{
                view.frame = CGRect(x:  1200 ,y : self.view.frame.size.height - 228 , width : 100 , height : 10)
            }
            if index == 5{
                view.frame = CGRect(x:  1500 ,y : self.view.frame.size.height - 228 , width : 100 , height : 10)
            }
            if index == 6{
                view.frame = CGRect(x:  1800 ,y : self.view.frame.size.height - 228 , width : 100 , height : 10)
            }
            if index == 7{
                view.frame = CGRect(x:  5700 ,y : self.view.frame.size.height - 228 , width : 100 , height : 10)
            }
            
            if index == 8{
                view.frame = CGRect(x:  6000 ,y : self.view.frame.size.height - 228 , width : 100 , height : 10)
            }
            if index == 9{
                view.frame = CGRect(x:  6300 ,y : self.view.frame.size.height - 228 , width : 100 , height : 10)
            }
            if index == 10{
                view.frame = CGRect(x:  6600 ,y : self.view.frame.size.height - 228 , width : 100 , height : 10)
            }
            if index == 11{
                view.frame = CGRect(x:  6900 ,y : self.view.frame.size.height - 228 , width : 100 , height : 10)
            }
            view.layer.cornerRadius = 5
            view.backgroundColor = UIColor.black
            scrollView.addSubview(view)
        }
        
        for index in 1...14{
            
            let view = UIView()
            if index == 1{
                view.frame = CGRect(x: 700 ,y : self.view.frame.size.height - 258 , width : 100 , height : 10)
            }
            if index == 2{
                view.frame = CGRect(x:  1000 ,y : self.view.frame.size.height - 258 , width : 100 , height : 10)
            }
            if index == 3{
                view.frame = CGRect(x:  1300 ,y : self.view.frame.size.height - 258 , width : 100 , height : 10)
            }
            if index == 4{
                view.frame = CGRect(x:  1600 ,y : self.view.frame.size.height - 258 , width : 100 , height : 10)
            }
            if index == 5{
                view.frame = CGRect(x:  1900 ,y : self.view.frame.size.height - 258 , width : 100 , height : 10)
            }
            if index == 6{
                view.frame = CGRect(x:  2200 ,y : self.view.frame.size.height - 258 , width : 100 , height : 10)
            }
            if index == 7{
                view.frame = CGRect(x:  2500 ,y : self.view.frame.size.height - 258 , width : 100 , height : 10)
            }
            
            if index == 8{
                view.frame = CGRect(x:  5000 ,y : self.view.frame.size.height - 258 , width : 100 , height : 10)
            }
            if index == 9{
                view.frame = CGRect(x:  5300 ,y : self.view.frame.size.height - 258 , width : 100 , height : 10)
            }
            if index == 10{
                view.frame = CGRect(x:  5600 ,y : self.view.frame.size.height - 258 , width : 100 , height : 10)
            }
            if index == 11{
                view.frame = CGRect(x:  5900 ,y : self.view.frame.size.height - 258 , width : 100 , height : 10)
            }
            if index == 12{
                view.frame = CGRect(x:  6200 ,y : self.view.frame.size.height - 258 , width : 100 , height : 10)
            }
            if index == 13{
                view.frame = CGRect(x:  6500 ,y : self.view.frame.size.height - 258 , width : 100 , height : 10)
            }
            if index == 14{
                view.frame = CGRect(x:  6800 ,y : self.view.frame.size.height - 258 , width : 100 , height : 10)
            }

            
            view.layer.cornerRadius = 5
            view.backgroundColor = UIColor.blue
            scrollView.addSubview(view)
        }
        
        
        for index in 1...14{
            
            let view = UIView()
            if index == 1{
                view.frame = CGRect(x: 1400 ,y : self.view.frame.size.height - 308 , width : 100 , height : 10)
            }
            if index == 2{
                view.frame = CGRect(x:  1700 ,y : self.view.frame.size.height - 308 , width : 100 , height : 10)
            }
            if index == 3{
                view.frame = CGRect(x:  2000 ,y : self.view.frame.size.height - 308 , width : 100 , height : 10)
            }
            if index == 4{
                view.frame = CGRect(x:  2300 ,y : self.view.frame.size.height - 308 , width : 100 , height : 10)
            }
            if index == 5{
                view.frame = CGRect(x:  2600 ,y : self.view.frame.size.height - 308 , width : 100 , height : 10)
            }
            if index == 6{
                view.frame = CGRect(x:  2900 ,y : self.view.frame.size.height - 308 , width : 100 , height : 10)
            }
            if index == 7{
                view.frame = CGRect(x:  3200 ,y : self.view.frame.size.height - 308 , width : 100 , height : 10)
            }
            
            if index == 8{
                view.frame = CGRect(x:  4300 ,y : self.view.frame.size.height - 308 , width : 100 , height : 10)
            }
            if index == 9{
                view.frame = CGRect(x:  4600 ,y : self.view.frame.size.height - 308 , width : 100 , height : 10)
            }
            if index == 10{
                view.frame = CGRect(x:  4900 ,y : self.view.frame.size.height - 308 , width : 100 , height : 10)
            }
            if index == 11{
                view.frame = CGRect(x:  5200 ,y : self.view.frame.size.height - 308 , width : 100 , height : 10)
            }
            if index == 12{
                view.frame = CGRect(x:  5500 ,y : self.view.frame.size.height - 308 , width : 100 , height : 10)
            }
            if index == 13{
                view.frame = CGRect(x:  5800 ,y : self.view.frame.size.height - 308 , width : 100 , height : 10)
            }
            if index == 14{
                view.frame = CGRect(x:  6100 ,y : self.view.frame.size.height - 308 , width : 100 , height : 10)
            }
            view.layer.cornerRadius = 5
            view.backgroundColor = UIColor.green
            scrollView.addSubview(view)
        }
        

        for index in 1...11{
            
            let view = UIView()
            if index == 1{
                view.frame = CGRect(x: 2100 ,y : self.view.frame.size.height - 358 , width : 100 , height : 10)
            }
            if index == 2{
                view.frame = CGRect(x:  2400 ,y : self.view.frame.size.height - 358 , width : 100 , height : 10)
            }
            if index == 3{
                view.frame = CGRect(x:  2700 ,y : self.view.frame.size.height - 358 , width : 100 , height : 10)
            }
            if index == 4{
                view.frame = CGRect(x:  3000 ,y : self.view.frame.size.height - 358 , width : 100 , height : 10)
            }
            if index == 5{
                view.frame = CGRect(x:  3300 ,y : self.view.frame.size.height - 358 , width : 100 , height : 10)
            }
            if index == 6{
                view.frame = CGRect(x:  3900 ,y : self.view.frame.size.height - 358 , width : 100 , height : 10)
            }
            if index == 7{
                view.frame = CGRect(x:  4200 ,y : self.view.frame.size.height - 358 , width : 100 , height : 10)
            }
            
            if index == 8{
                view.frame = CGRect(x:  4500 ,y : self.view.frame.size.height - 358 , width : 100 , height : 10)
            }
            if index == 9{
                view.frame = CGRect(x:  4800 ,y : self.view.frame.size.height - 358 , width : 100 , height : 10)
            }
            if index == 10{
                view.frame = CGRect(x:  5100 ,y : self.view.frame.size.height - 358 , width : 100 , height : 10)
            }
            if index == 11{
                view.frame = CGRect(x:  5400 ,y : self.view.frame.size.height - 358 , width : 100 , height : 10)
            }
            view.layer.cornerRadius = 5
            view.backgroundColor = UIColor.purple
            scrollView.addSubview(view)
        }
        

        for index in 1...7{
            let view = UIView()
            if index == 1{
                view.frame = CGRect(x: 2800 ,y : self.view.frame.size.height - 408 , width : 100 , height : 10)
            }
            if index == 2{
                view.frame = CGRect(x:  3100 ,y : self.view.frame.size.height - 408 , width : 100 , height : 10)
            }
            if index == 3{
                view.frame = CGRect(x:  3400 ,y : self.view.frame.size.height - 408 , width : 100 , height : 10)
            }
            if index == 4{
                view.frame = CGRect(x:  3800 ,y : self.view.frame.size.height - 408 , width : 100 , height : 10)
            }
            if index == 5{
                view.frame = CGRect(x:  4100 ,y : self.view.frame.size.height - 408 , width : 100 , height : 10)
            }
            if index == 6{
                view.frame = CGRect(x:  4400 ,y : self.view.frame.size.height - 408 , width : 100 , height : 10)
            }
            if index == 7{
                view.frame = CGRect(x:  4700 ,y : self.view.frame.size.height - 408 , width : 100 , height : 10)
            }
            
            view.layer.cornerRadius = 5
            view.backgroundColor = UIColor.brown
            scrollView.addSubview(view)
        }

        for index in 1...3{
            let view = UIView()
            if index == 1{
                view.frame = CGRect(x: 3500 ,y : self.view.frame.size.height - 458 , width : 200 , height : 10)
                
            }
            if index == 2{
                view.frame = CGRect(x:  3700 ,y : self.view.frame.size.height - 458 , width : 100 , height : 10)
            }
            if index == 3{
                view.frame = CGRect(x:  4000 ,y : self.view.frame.size.height - 458 , width : 200 , height : 10)
            }
            view.layer.cornerRadius = 5
            view.backgroundColor = UIColor.yellow
            scrollView.addSubview(view)
            
            
        }

        


        

        
        self.navigationController?.navigationBar.isHidden = true
        timer =   Timer.scheduledTimer(timeInterval: 0.0, target: self, selector: #selector(RiyazSongViewController.call), userInfo: nil, repeats: true)
        
    }
    
    func playSong(){
        
        guard let url = Bundle.main.url(forResource: "SaReGa_SaReGaMa_2b", withExtension: "wav") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.play()
        } catch let error {
            print(error.localizedDescription)
        }

    }
    
    func call(){
    UIView.animate(withDuration: 50, delay: 2.0, options: .curveLinear, animations: {
    self.scrollView.contentOffset = CGPoint(x: 7300 , y : 0)
    })
        if scrollView.contentOffset.x == 7300{
          timer.invalidate()
        }
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
         self.navigationController?.navigationBar.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
