//
//  PostActionCell.swift
//  Makestagram
//
//  Created by Duncan MacDonald on 6/27/17.
//  Copyright © 2017 MakeSchool. All rights reserved.
//

import Foundation
import UIKit

class PostActionCell: UITableViewCell {
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var timeAgoLabel: UILabel!
    
    static let height: CGFloat = 46
    
    @IBAction func likeButtonTapped(_ sender: Any) {
        
    }
}
