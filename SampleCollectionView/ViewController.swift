//
//  ViewController.swift
//  SampleCollectionView
//
//  Created by kvanaMini1 on 18/05/16.
//  Copyright © 2016 kvanaMini1. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {

    
    var ImageArray = [String]()
    var LabelArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
         LabelArray = ["Social", "Active", "Artistic", "Dancey", "Family", "Foodie", "Intelligent", "Musical", "Spiritual", "Sporty"]
        ImageArray = ["mood_social", "mood_active_sel", "mood_artistic", "mood_dancey", "mood_family_sel", "mood_foodie", "mood_intelligent", "mood_musical", "mood_spiritual_sel", "mood_sporty"]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as UICollectionViewCell
        
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        
        imageView.image = UIImage(named: ImageArray[indexPath.row])
    
        
       
        
        
        return cell
        
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ImageArray.count
        
    }
    



}

