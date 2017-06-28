//
//  PostActionCell.swift
//  Makestagram
//
//  Created by Duncan MacDonald on 6/27/17.
//  Copyright © 2017 MakeSchool. All rights reserved.
//

import Foundation
import UIKit

protocol PostActionCellDelegate: class {
    func didTapLikeButton(_ likeButton: UIButton, on cell: PostActionCell)
}

class PostActionCell: UITableViewCell {
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var timeAgoLabel: UILabel!
    
    weak var delegate: PostActionCellDelegate?
    
    static let height: CGFloat = 46
    
    @IBAction func likeButtonTapped(_ sender: Any) {
        
        //added the 'as! UiButton' to this
        delegate?.didTapLikeButton(sender as! UIButton, on: self)
    }
}
