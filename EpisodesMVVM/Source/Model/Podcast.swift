import Foundation



struct PodcastResponse: Codable {
    let podcastUnionV2: [String: PodcastUnionV2]?
    let extensions: [Data]?
    
    enum CodingKeys: String, CodingKey {
        case podcastUnionV2 = "data"
        case extensions = "extensions"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.podcastUnionV2 = try container.decodeIfPresent([String: PodcastUnionV2].self, forKey: .podcastUnionV2)
        self.extensions = try container.decodeIfPresent([Data].self, forKey: .extensions)
    }
}

struct EpisodeResponse : Codable {
    let episodeUnionV2: [String: EpisodeUnionV2]?
    let extensions: [Data]?
    
    enum CodingKeys : String, CodingKey {
        case episodeUnionV2  = "data"
        case extensions = "extensions"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.episodeUnionV2 = try container.decodeIfPresent([String: EpisodeUnionV2].self, forKey: .episodeUnionV2)
        self.extensions = try container.decodeIfPresent([Data].self, forKey: .extensions)
    }
}

// Add similar init methods for other structs...


struct EpisodeUnionV2 : Codable {
    var __typename : String? = nil
    var id : String? = nil
    var uri : String? = nil
    var name : String? = nil
    var contents : [String]? = nil
    var htmlDescription : String? = nil
    var description : String? = nil
    var coverArt : CoverArt? = nil
    var creator : String? = nil
    var audio : Audio? = nil
    var audioPreview : AudioPreview? = nil
    var duration : Duration? = nil
    var contentRating : ContentRating? = nil
    var releaseDate : ReleaseDate? = nil
    var playedState : PlayedState? = nil
    var mediaTypes : [String]? = nil
    var restrictions : Restrictions? = nil
    var playability : Playability? = nil
    var sharingInfo : SharingInfo? = nil
    var podcastV2 : PodcastV2? = nil
    var type : String? = nil
    var segments : String? = nil
    var contentInformation : String? = nil
    var transcripts : Transcripts? = nil
    
    enum CodingKeys: String, CodingKey {
        
        case __typename = "__typename"
        case id = "id"
        case uri = "uri"
        case name = "name"
        case contents = "contents"
        case htmlDescription = "htmlDescription"
        case description = "description"
        case coverArt = "coverArt"
        case creator = "creator"
        case audio = "audio"
        case audioPreview = "audioPreview"
        case duration = "duration"
        case contentRating = "contentRating"
        case releaseDate = "releaseDate"
        case playedState = "playedState"
        case mediaTypes = "mediaTypes"
        case restrictions = "restrictions"
        case playability = "playability"
        case sharingInfo = "sharingInfo"
        case podcastV2 = "podcastV2"
        case type = "type"
        case segments = "segments"
        case contentInformation = "contentInformation"
        case transcripts = "transcripts"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        __typename = try values.decodeIfPresent(String.self, forKey: .__typename)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        uri = try values.decodeIfPresent(String.self, forKey: .uri)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        contents = try values.decodeIfPresent([String].self, forKey: .contents)
        htmlDescription = try values.decodeIfPresent(String.self, forKey: .htmlDescription)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        coverArt = try values.decodeIfPresent(CoverArt.self, forKey: .coverArt)
        creator = try values.decodeIfPresent(String.self, forKey: .creator)
        audio = try values.decodeIfPresent(Audio.self, forKey: .audio)
        audioPreview = try values.decodeIfPresent(AudioPreview.self, forKey: .audioPreview)
        duration = try values.decodeIfPresent(Duration.self, forKey: .duration)
        contentRating = try values.decodeIfPresent(ContentRating.self, forKey: .contentRating)
        releaseDate = try values.decodeIfPresent(ReleaseDate.self, forKey: .releaseDate)
        playedState = try values.decodeIfPresent(PlayedState.self, forKey: .playedState)
        mediaTypes = try values.decodeIfPresent([String].self, forKey: .mediaTypes)
        restrictions = try values.decodeIfPresent(Restrictions.self, forKey: .restrictions)
        playability = try values.decodeIfPresent(Playability.self, forKey: .playability)
        sharingInfo = try values.decodeIfPresent(SharingInfo.self, forKey: .sharingInfo)
        podcastV2 = try values.decodeIfPresent(PodcastV2.self, forKey: .podcastV2)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        segments = try values.decodeIfPresent(String.self, forKey: .segments)
        contentInformation = try values.decodeIfPresent(String.self, forKey: .contentInformation)
        transcripts = try values.decodeIfPresent(Transcripts.self, forKey: .transcripts)
    }
    
    init () {
        
    }
    
}


struct Transcripts: Codable {
    
    var items : [String]? = []
    
    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try values.decodeIfPresent([String].self , forKey: .items )
        
    }
    
    init() {
        
    }
    
}


struct Sources: Codable {
    
    var url    : String? = nil
    var width  : Int?    = nil
    var height : Int?    = nil
    
    enum CodingKeys: String, CodingKey {
        
        case url    = "url"
        case width  = "width"
        case height = "height"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        url    = try values.decodeIfPresent(String.self , forKey: .url    )
        width  = try values.decodeIfPresent(Int.self    , forKey: .width  )
        height = try values.decodeIfPresent(Int.self    , forKey: .height )
        
    }
    
    init() {
        
    }
    
}


struct SharingInfo: Codable {
    
    var shareUrl : String? = nil
    var shareId  : String? = nil
    
    enum CodingKeys: String, CodingKey {
        
        case shareUrl = "shareUrl"
        case shareId  = "shareId"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        shareUrl = try values.decodeIfPresent(String.self , forKey: .shareUrl )
        shareId  = try values.decodeIfPresent(String.self , forKey: .shareId  )
        
    }
    
    init() {
        
    }
    
}


struct Restrictions: Codable {
    
    var paywallContent : Bool? = nil
    
    enum CodingKeys: String, CodingKey {
        
        case paywallContent = "paywallContent"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        paywallContent = try values.decodeIfPresent(Bool.self , forKey: .paywallContent )
        
    }
    
    init() {
        
    }
    
}


struct ReleaseDate: Codable {
    
    var isoString : String? = nil
    
    enum CodingKeys: String, CodingKey {
        
        case isoString = "isoString"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        isoString = try values.decodeIfPresent(String.self , forKey: .isoString )
        
    }
    
    init() {
        
    }
    
}


struct PodcastV2: Codable {
    
    var data : PodcastData? = PodcastData()
    
    enum CodingKeys: String, CodingKey {
        
        case data = "data"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        data = try values.decodeIfPresent(PodcastData.self , forKey: .data )
        
    }
    
    init() {
        
    }
    
}



struct PodcastUnionV2: Codable {
    
    var _typename  : String?     = nil
    var id         : String?     = nil
    var uri        : String?     = nil
    var name       : String?     = nil
    var episodesV2 : EpisodesV2? = EpisodesV2()
    
    enum CodingKeys: String, CodingKey {
        
        case _typename  = "__typename"
        case id         = "id"
        case uri        = "uri"
        case name       = "name"
        case episodesV2 = "episodesV2"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        _typename  = try values.decodeIfPresent(String.self     , forKey: ._typename  )
        id         = try values.decodeIfPresent(String.self     , forKey: .id         )
        uri        = try values.decodeIfPresent(String.self     , forKey: .uri        )
        name       = try values.decodeIfPresent(String.self     , forKey: .name       )
        episodesV2 = try values.decodeIfPresent(EpisodesV2.self , forKey: .episodesV2 )
        
    }
    
    init() {
        
    }
    
}


struct PlayedState: Codable {
    
    var playPositionMilliseconds : Int?    = nil
    var state                    : String? = nil
    
    enum CodingKeys: String, CodingKey {
        
        case playPositionMilliseconds = "playPositionMilliseconds"
        case state                    = "state"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        playPositionMilliseconds = try values.decodeIfPresent(Int.self    , forKey: .playPositionMilliseconds )
        state                    = try values.decodeIfPresent(String.self , forKey: .state                    )
        
    }
    
    init() {
        
    }
    
}


struct Playability: Codable {
    
    var playable             : Bool?     = nil
    var reason               : String?   = nil
    var unplayabilityReasons : [String]? = []
    
    enum CodingKeys: String, CodingKey {
        
        case playable             = "playable"
        case reason               = "reason"
        case unplayabilityReasons = "unplayabilityReasons"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        playable             = try values.decodeIfPresent(Bool.self     , forKey: .playable             )
        reason               = try values.decodeIfPresent(String.self   , forKey: .reason               )
        unplayabilityReasons = try values.decodeIfPresent([String].self , forKey: .unplayabilityReasons )
        
    }
    
    init() {
        
    }
    
}


struct PagingInfo: Codable {
    
    var nextOffset : Int? = nil
    
    enum CodingKeys: String, CodingKey {
        
        case nextOffset = "nextOffset"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        nextOffset = try values.decodeIfPresent(Int.self , forKey: .nextOffset )
        
    }
    
    init() {
        
    }
    
}


struct Items: Codable {
    
    var uid    : String? = nil
    var entity : PodcastEntity? = PodcastEntity()
    
    enum CodingKeys: String, CodingKey {
        
        case uid    = "uid"
        case entity = "entity"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        uid    = try values.decodeIfPresent(String.self , forKey: .uid    )
        entity = try values.decodeIfPresent(PodcastEntity.self , forKey: .entity )
        
    }
    
    init() {
        
    }
    
}


struct EpisodesV2: Codable {
    
    var _typename  : String?     = nil
    var totalCount : Int?        = nil
    var pagingInfo : PagingInfo? = PagingInfo()
    var items      : [Items]?    = []
    
    enum CodingKeys: String, CodingKey {
        
        case _typename  = "__typename"
        case totalCount = "totalCount"
        case pagingInfo = "pagingInfo"
        case items      = "items"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        _typename  = try values.decodeIfPresent(String.self     , forKey: ._typename  )
        totalCount = try values.decodeIfPresent(Int.self        , forKey: .totalCount )
        pagingInfo = try values.decodeIfPresent(PagingInfo.self , forKey: .pagingInfo )
        items      = try values.decodeIfPresent([Items].self    , forKey: .items      )
        
    }
    
    init() {
        
    }
    
}


struct PodcastEntity: Codable {
    
    var Uri  : String? = nil
    var data : EpisodeUnionV2?   = EpisodeUnionV2()
    
    enum CodingKeys: String, CodingKey {
        
        case Uri  = "_uri"
        case data = "data"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        Uri  = try values.decodeIfPresent(String.self , forKey: .Uri  )
        data = try values.decodeIfPresent(EpisodeUnionV2.self   , forKey: .data )
    }
    
    init() {
        
    }
    
}


struct Duration: Codable {
    
    var totalMilliseconds : Int? = nil
    
    enum CodingKeys: String, CodingKey {
        
        case totalMilliseconds = "totalMilliseconds"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        totalMilliseconds = try values.decodeIfPresent(Int.self , forKey: .totalMilliseconds )
        
    }
    
    init() {
        
    }
    
}



struct PodcastData: Codable {
    
    var data : PodcastUnionV2? = PodcastUnionV2()
    
    enum CodingKeys: String, CodingKey {
        
        case data = "data"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        data = try values.decodeIfPresent(PodcastUnionV2.self , forKey: .data )
        
    }
    
    init() {
        
    }
    
}


struct CoverArt: Codable {
    
    var sources : [Sources]? = []
    
    enum CodingKeys: String, CodingKey {
        
        case sources = "sources"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        sources = try values.decodeIfPresent([Sources].self , forKey: .sources )
        
    }
    
    init() {
        
    }
    
}


struct ContentRating: Codable {
    
    var label : String? = nil
    
    enum CodingKeys: String, CodingKey {
        
        case label = "label"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        label = try values.decodeIfPresent(String.self , forKey: .label )
        
    }
    
    init() {
        
    }
    
}


struct AudioPreview: Codable {
    
    var url    : String? = nil
    var format : String? = nil
    
    enum CodingKeys: String, CodingKey {
        
        case url    = "url"
        case format = "format"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        url    = try values.decodeIfPresent(String.self , forKey: .url    )
        format = try values.decodeIfPresent(String.self , forKey: .format )
        
    }
    
    init() {
        
    }
    
}

struct Audio: Codable {
    var items : [Items]? = []
    enum CodingKeys: String, CodingKey {
        case items = "items"
    }
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        items = try values.decodeIfPresent([Items].self , forKey: .items )
    }
    
    init() {
    }
    
}




