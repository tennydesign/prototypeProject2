//
//  TopStoryTableViewCell.swift
//  project2_NewsFeed
//
//  Created by Tenny on 12/10/17.
//  Copyright © 2017 Tenny. All rights reserved.
//

import UIKit

class TopStoryTableViewCell: UITableViewCell {

    @IBOutlet weak var datePublished: UITextView!
    @IBOutlet weak var sourceImage: UIImageView!
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var photoView: UIView!
    @IBOutlet weak var headlineText: UITextView!
    @IBOutlet weak var minutesAgo: UITextView!
    
    @IBOutlet weak var loading: UIActivityIndicatorView!
    var rowID: Int?
   
    var urlToShare: String?
    
    @IBAction func sharePressed(_ sender: UIButton) {
        
        News.sharedINstance.shareNews(urlToShare: urlToShare!)
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        photoView.layer.cornerRadius = 3
        photoView.layer.masksToBounds = true
        
        photoView.layer.borderColor = UIColor.black.cgColor
        photoView.layer.shadowColor = UIColor.black.cgColor
        photoView.layer.shadowOffset = CGSize(width: 3, height: 3)
        photoView.layer.shadowOpacity = 0.7
        photoView.layer.shadowRadius = 4.0
            
        
      
    }


    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
   
    
    override func prepareForReuse() {
        newsImage.image = nil
    }
    
}

/*
 let shareText = "Hello, world!"
 
 if let image = UIImage(named: "myImage") {
 let vc = UIActivityViewController(activityItems: [shareText, image], applicationActivities: [])
 presentViewController(vc, animated: true, completion: nil)
 }
 */
