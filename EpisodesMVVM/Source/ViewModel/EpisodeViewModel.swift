//
//  EpisodeViewModel.swift
//  EpisodesMVVM
//
//  Created by Patrick Moscova on 4/3/24.
//

import Foundation


protocol EpisodeListViewModelDelegate : AnyObject {
    func viewModel(_ viewModel:EpisodeListViewModel, didUpdateEpisodes episodes:[Episode])
    func viewModel(_ viewModel:EpisodeListViewModel, didEncounterError error: Error)
}

class EpisodeListViewModel {
    weak var delegate: EpisodeListViewModelDelegate?
    var episodes: [Episode] = [] {
        didSet{
            delegate?.viewModel(self, didUpdateEpisodes: episodes)
        }
    }
    var errorMessage : String? {
        didSet{
            if let errorMessage = errorMessage {
                delegate?.viewModel(self, didEncounterError: NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey:errorMessage]))
            }
        }
    }
    func fetchEpisode(podcastID: String = K.DefaultIDs.podcastID) async throws {
        let podcastResponse = try await NetworkManager.podcastEpisodes(podcastID)
        if let episodesV2 = podcastResponse.podcastUnionV2?["podcastUnionV2"] as? PodcastUnionV2 {
            let episodes = episodesV2.episodesV2?.items?.compactMap { item -> Episode? in
                guard let entity = item.entity, let data = entity.data else {
                    return nil
                }
                return Episode(from: data)
            } ?? []
            self.episodes = episodes
        }else{
            print("\(#function):::error")
            throw NSError(domain: "", code: 9001, userInfo: [NSLocalizedDescriptionKey:"No episode data available"])
        }
    }
}

