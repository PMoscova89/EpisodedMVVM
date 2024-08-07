//
//  EpisodeViewController+UITableView.swift
//  EpisodesMVVM
//
//  Created by Patrick Moscova on 4/3/24.
//

import Foundation
import UIKit

extension EpisodeViewController : UITableViewDelegate {
 
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(K.Dimensions.cellHeight)
    }
}

extension EpisodeViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: K.CellNames.episodeTableViewCell, for: indexPath) as? EpisodeTableViewCell else {
            return UITableViewCell()
        }
        let currentEpisode = episodeListViewModel.episodes[indexPath.row]
        cell.configureWithEpisode(currentEpisode)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodeListViewModel.episodes.count
    }
}
