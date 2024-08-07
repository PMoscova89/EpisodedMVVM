//
//  NetworkManager.swift
//  EpisodesMVVM
//
//  Created by Patrick Moscova on 4/3/24.
//

import Foundation


struct NetworkManager {
    enum NetworkError : Error {
        case invalidURL
        case invalidRespone
        case decodingError(Error)
    }
    
    static func fetchEpisodeInfo(episodeID: String = K.DefaultIDs.episodeID) async throws ->EpisodeResponse {
         let urlString = "\(K.URLS.episode)?id=\(episodeID)"
        guard let url = URL(string: urlString) else {
            print("\(#function):::error creating url")
            throw NetworkError.invalidURL
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let apiKey = PListManager.getAPIKey()
        request.setValue(apiKey, forHTTPHeaderField: K.HeaderKeys.apiKey)
        request.setValue(K.URLS.host, forHTTPHeaderField: K.HeaderKeys.host)
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode)else {
                throw NetworkError.invalidRespone
            }
            let episode = try JSONDecoder().decode(EpisodeResponse.self, from: data)
            return episode
            
        }catch{
            print("\(#function):::decodingError")
            throw NetworkError.decodingError(error)
        }
    }
    
    
    
    
    static func podcastEpisodes(_ podcastID : String = K.DefaultIDs.podcastID) async throws -> PodcastResponse{
        let urlString = "\(K.URLS.podcast)&id=\(podcastID)"
        guard let url = URL(string: urlString) else {
            print("\(#function) error. Invalid URL ")
            throw NetworkError.invalidURL
        }
        var request = URLRequest(url: url)
        let apiKey = PListManager.getAPIKey()
        request.setValue(apiKey, forHTTPHeaderField: K.HeaderKeys.apiKey)
        request.setValue(K.URLS.host, forHTTPHeaderField: K.HeaderKeys.host)
        do{
            let (data, response) = try await URLSession.shared.data(for: request)
            guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
                throw NetworkError.invalidRespone
            }
            let podcast = try JSONDecoder().decode(PodcastResponse.self, from: data)
            if let p = podcast.podcastUnionV2?["podcastUnionV2"] as? PodcastUnionV2 {
                print(p.episodesV2?.items?.first)
            }
            return podcast
            
            //podcast.podcastUnionV2["podcastUnionV2"]
        }catch {
            print("\(#function):::decoding error\n\(error)\n\(error.localizedDescription)")
            throw NetworkError.decodingError(error)
        }

        
    }
    
}
