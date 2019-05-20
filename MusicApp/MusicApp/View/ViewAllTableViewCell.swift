//
//  ViewAllTableViewCell.swift
//  MusicApp
//
//  Created by shohib mohammed pathan on 20/05/19.
//  Copyright © 2019 AppKrafting. All rights reserved.
//

import UIKit

class ViewAllTableViewCell: UITableViewCell {

    @IBOutlet weak var viewAllTracksButton: UIButton!
    @IBOutlet weak var viewAllAlbumsButton: UIButton!
    @IBOutlet weak var viewAllArtistButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
