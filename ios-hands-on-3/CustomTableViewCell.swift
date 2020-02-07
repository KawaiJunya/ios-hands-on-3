//
//  CustomTableViewCell.swift
//  ios-hands-on-3
//
//  Created by junya.kawai on 2020/02/07.
//  Copyright © 2020 nextbeat. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var age: UILabel!
    
    func setup(person: Person) {
        name.text = person.name
        age.text  = String(person.age)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
