//
//  DetailTableViewCell.swift
//  Lesson_4
//
//  Created by Vova Kutsanov on 08.03.2020.
//  Copyright © 2020 Vova Kutsanov. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    
    @IBOutlet var olName: UILabel!
    @IBOutlet var olUrl: UILabel!
    @IBOutlet var olDescription: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
