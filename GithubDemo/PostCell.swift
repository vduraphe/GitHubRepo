//
//  PostCell.swift
//  GithubDemo
//
//  Created by Vaidehi Duraphe on 2/15/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var projectLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    
    var repos: GithubRepo! {
        didSet{
            projectLabel.text = repos.name
            authorLabel.text = repos.ownerHandle
            if let AvatarURL = repos.ownerAvatarURL
            {
                self.myImageView.setImageWith(NSURL(string: AvatarURL)! as URL)
            }
            else
            {
                self.myImageView = nil
            }
            descriptionLabel.text = repos.repoDescription
            starLabel.text =  "\(repos.stars!)"
            forkLabel.text = "\(repos.forks!)"
            
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        myImageView.layer.cornerRadius = 3.5
        myImageView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
