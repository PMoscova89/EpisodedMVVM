import Foundation



struct Episode {
    let id: String
    let name: String
    let description: String
    let coverArtURL: URL?
    
    init(from episodeUnion: EpisodeUnionV2) {
        self.id = episodeUnion.id ?? ""
        self.name = episodeUnion.name ?? ""
        self.description =  episodeUnion.description ?? ""
        self.coverArtURL = episodeUnion.coverArt?.sources?.first?.url.flatMap{ URL(string: $0) }
        
    }
}





//
//struct PodcastResponse: Codable {
//    let data: PodcastData?
//}
//
//struct PodcastData: Codable {
//    let podcastUnionV2: PodcastInfo?
//}
//
//struct PodcastInfo: Codable {
//    let id: String?
//    let uri: String?
//    let name: String?
//    let episodesV2: EpisodesPage?
//}
//
//struct EpisodesPage: Codable {
//    let totalCount: Int?
//    let pagingInfo: PagingInfo?
//    let items: [EpisodeItem]?
//}
//
//struct PagingInfo: Codable {
//    let nextOffset: Int?
//}
//
//struct EpisodeItem: Codable {
//    let uid: String?
//    let entity: EpisodeEntity?
//}
//
//struct EpisodeEntity: Codable {
//    let _uri: String?
//    let data: EpisodeData?
//}
//
//struct EpisodeData: Codable {
//    let id: String?
//    let uri: String?
//    let name: String?
//    let htmlDescription: String?
//    let description: String?
//    let coverArt: CoverArt?
//    let audio: Audio?
//    let audioPreview: AudioPreview?
//    let duration: Duration?
//    let contentRating: ContentRating?
//    let releaseDate: ReleaseDate?
//    let playedState: PlayedState?
//    let mediaTypes: [String]?
//    let restrictions: Restrictions?
//    let playability: Playability?
//    let sharingInfo: SharingInfo?
//    let podcastV2: PodcastV2?
//    let type: String?
//    let segments: String?
//    let contentInformation: String?
//    let transcripts: Transcripts?
//}
//
//struct CoverArt: Codable {
//    let sources: [ImageSource]?
//}
//
//struct ImageSource: Codable {
//    let url: String?
//    let width: Int?
//    let height: Int?
//}
//
//struct Audio: Codable {
//    let items: [AudioItem]?
//}
//
//struct AudioItem: Codable {
//    let url: String?
//    let format: String?
//    let fileId: String?
//}
//
//struct AudioPreview: Codable {
//    let url: String?
//    let format: String?
//}
//
//struct Duration: Codable {
//    let totalMilliseconds: Int?
//}
//
//struct ContentRating: Codable {
//    let label: String?
//}
//
//struct ReleaseDate: Codable {
//    let isoString: String?
//}
//
//struct PlayedState: Codable {
//    let playPositionMilliseconds: Int?
//    let state: String?
//}
//
//struct Restrictions: Codable {
//    let paywallContent: Bool?
//}
//
//struct Playability: Codable {
//    let playable: Bool?
//    let reason: String?
//    let unplayabilityReasons: [String]?
//}
//
//struct SharingInfo: Codable {
//    let shareUrl: String?
//    let shareId: String?
//}
//
//struct PodcastV2: Codable {
//    let data: PodcastV2Data?
//}
//
//struct PodcastV2Data: Codable {
//    let uri: String?
//    let name: String?
//    let coverArt: CoverArt?
//    let trailerV2: TrailerV2?
//    let showTypes: [String]?
//}
//
//struct TrailerV2: Codable {
//    // Add properties if any
//}
//
//struct Transcripts: Codable {
//    let items: [String]
//}
//
//
//
//
//
//
//
//
//
//
////
////struct Podcast: Codable {
////    let data: PodcastData?
////}
////
////struct PodcastData: Codable {
////    let podcastUnionV2: PodcastInfo?
////}
////
////struct PodcastInfo: Codable {
////    let id: String?
////    let uri: String?
////    let name: String?
////    let episodesV2: EpisodesPage?
////}
////
////struct EpisodesPage: Codable {
////    let totalCount: Int?
////    let pagingInfo: PagingInfo?
////    let items: [EpisodeItem]?
////}
////
////struct PagingInfo: Codable {
////    let nextOffset: Int?
////}
////
////struct EpisodeItem: Codable {
////    let uid: String?
////    let entity: EpisodeEntity?
////}
////
////struct EpisodeEntity: Codable {
////    let _uri: String?
////    let data: EpisodeData?
////}
////
////
////
////struct Episode: Codable {
////    let data: EpisodeData
////    
////    private enum CodingKeys: String, CodingKey {
////        case data
////    }
////}
////
////struct EpisodeData: Codable {
////    let episodeUnionV2: EpisodeInfo
////    
////    private enum CodingKeys: String, CodingKey {
////        case episodeUnionV2 = "episodeUnionV2"
////    }
////}
////
////struct EpisodeInfo: Codable {
////    let id: String?
////    let uri: String?
////    let name: String?
////    let htmlDescription: String?
////    let description: String?
////    let coverArt: CoverArt?
////    let duration: Duration?
////    let contentRating: ContentRating?
////    let releaseDate: ReleaseDate?
////    let mediaTypes: [String]?
////    let restrictions: Restrictions?
////    let playability: Playability?
////    let type: String?
////    let segments: String?
////    let contentInformation: String?
////    let transcripts: Transcripts?
////    
////    private enum CodingKeys: String, CodingKey {
////        case id, uri, name, htmlDescription, description, coverArt, duration, contentRating, releaseDate, mediaTypes, restrictions, playability, type, segments, contentInformation, transcripts
////    }
////}
////
////struct CoverArt: Codable {
////    let sources: [ImageSource]?
////}
////
////struct ImageSource: Codable {
////    let url: String?
////    let width: Int?
////    let height: Int?
////}
////
////struct Duration: Codable {
////    let totalMilliseconds: Int?
////}
////
////struct ContentRating: Codable {
////    let label: String?
////}
////
////struct ReleaseDate: Codable {
////    let isoString: String?
////}
////
////struct Restrictions: Codable {
////    let paywallContent: Bool?
////}
////
////struct Playability: Codable {
////    let playable: Bool?
////    let reason: String?
////    let unplayabilityReasons: [String]?
////}
////
////struct Transcripts: Codable {
////    let items: [String]?
////}
