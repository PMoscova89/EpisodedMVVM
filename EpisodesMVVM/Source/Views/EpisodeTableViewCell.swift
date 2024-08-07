//
//  EpisodeTableViewCell.swift
//  EpisodesMVVM
//
//  Created by Patrick Moscova on 4/3/24.
//

import UIKit

class EpisodeTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configureWithEpisode(_ episode: Episode) {
        titleLabel.text = episode.name
        descriptionLabel.text = episode.description
    }
    
}
