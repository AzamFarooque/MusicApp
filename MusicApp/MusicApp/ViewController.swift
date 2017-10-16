//
//  ViewController.swift
//  MusicApp
//
//  Created by Farooque on 13/10/17.
//  Copyright © 2017 riyaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
    self.navigationController?.navigationBar.isHidden = true
    }
    
    // Pragma Mark : - CollectionView Deleagtes
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    private func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RiyazLessonCollectionViewCell", for: indexPath as IndexPath) as! RiyazLessonCollectionViewCell
        
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOpacity = 1
        cell.layer.masksToBounds = false
        cell.layer.shadowOffset = CGSize.zero

        
        cell.songLabel.text = "SaReGa_SaReGa"
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(storyboard: .Main)
        let subsectionVC : RiyazSongViewController = storyboard.instantiateViewController()
        self.navigationController?.pushViewController(subsectionVC, animated: true)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
    
        return UIEdgeInsetsMake(10, 10, 10, 10)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

