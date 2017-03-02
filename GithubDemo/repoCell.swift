//
//  repoCell.swift
//  GithubDemo
//
//  Created by bwong on 2/15/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class repoCell: UITableViewCell {
    
    @IBOutlet weak var appName: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var avatar: UIImageView!
    
    var repo: GithubRepo! {
        
        didSet{
            appName.text = repo.name
            nameLabel.text = ("By \(repo.ownerHandle!)")
            starLabel.text = String(describing: repo.stars!)
            forkLabel.text = String(describing: repo.forks!)
            descriptionLabel.text = repo.repoDescription!
            avatar.setImageWith(URL(string: repo.ownerAvatarURL!)!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        descriptionLabel.preferredMaxLayoutWidth = descriptionLabel.frame.size.width
    
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        descriptionLabel.preferredMaxLayoutWidth = descriptionLabel.frame.size.width
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
