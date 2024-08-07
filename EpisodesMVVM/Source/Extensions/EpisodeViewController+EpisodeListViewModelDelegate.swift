//
//  EpisodeViewController+EpisodeListViewModelDelegate.swift
//  EpisodesMVVM
//
//  Created by Patrick Moscova on 4/3/24.
//

import Foundation
import UIKit

extension EpisodeViewController : EpisodeListViewModelDelegate {
    func viewModel(_ viewModel: EpisodeListViewModel, didUpdateEpisodes episodes: [Episode]) {
        DispatchQueue.main.async { [weak self] in
            self?.tableView.reloadData()
        }
    }
    
    func viewModel(_ viewModel: EpisodeListViewModel, didEncounterError error: Error) {
        DispatchQueue.main.async {[weak self] in
            let alertController = UIAlertController(title: "Alert ", message: error.localizedDescription, preferredStyle: .alert)
            
            // Add an action (button) to the alert
            let okAction = UIAlertAction(title: "OK", style: .default, handler: { _ in
                print("OK tapped")
            })
            
            // Add the action to the alert controller
            alertController.addAction(okAction)
            
            // Present the alert controller
            self?.present(alertController, animated: true, completion: nil)
        }
    }
    
    
}
