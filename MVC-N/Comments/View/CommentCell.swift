//
//  CommentCell.swift
//  MVC-N
//
//  Created by Artur Anissimov on 24.03.2020.
//  Copyright © 2020 Artur Anissimov. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    
    func configure(with comment: Comment) {
        self.label.text = comment.name
        self.textView.text = comment.body
    }
}
