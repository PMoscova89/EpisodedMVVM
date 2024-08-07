//
//  ViewController.swift
//  EpisodesMVVM
//
//  Created by Patrick Moscova on 4/3/24.
//

import UIKit

class EpisodeViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    var episodeListViewModel : EpisodeListViewModel = EpisodeListViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        episodeListViewModel.delegate = self
        searchBar.delegate = self
        setupTableView()
        Task {
            do{
                //try await NetworkManager.fetchEpisodeInfo(episodeID: K.DefaultIDs.episodeID)
                try  await episodeListViewModel.fetchEpisode()
            }catch {
                print("error in\n:::\(#function):::\n\(error.localizedDescription)")
            }

        }
    }

    
    fileprivate func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: K.CellNames.episodeTableViewCell, bundle: .main), forCellReuseIdentifier: K.CellNames.episodeTableViewCell)
    }

    
    
}
