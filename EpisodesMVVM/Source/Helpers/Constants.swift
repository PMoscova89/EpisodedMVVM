//
//  Constants.swift
//  EpisodesMVVM
//
//  Created by Patrick Moscova on 4/3/24.
//

import Foundation

struct K {
    
    struct URLS {
        static let host = "spotify23.p.rapidapi.com"
        static let episode = "https://spotify23.p.rapidapi.com/episode/"
        static let podcast = "https://spotify23.p.rapidapi.com/podcast_episodes/?offset=0&limit=50"
    }
    
    struct DefaultIDs {
        static let episodeID = "55EWbmkVr8iDNmSyperh9o"
        static let podcastID = "0ofXAdFIQQRsCYj9754UFx"
    }
    
    struct FileNames {
        static let keysPlist = "Keys"
    }
    struct pListKeys {
        static let apiKey = "APIKey"
    }
    struct HeaderKeys {
        static let apiKey = "X-RapidAPI-Key"
        static let host = "X-RapidAPI-Host"
    }
    struct CellNames {
        static let episodeTableViewCell = "EpisodeTableViewCell"
    }
    struct Dimensions {
        static let cellHeight = 128
    }
}
