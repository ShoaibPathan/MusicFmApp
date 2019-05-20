//
//  APIResponseModel.swift
//  MusicApp
//
//  Created by shohib mohammed pathan on 20/05/19.
//  Copyright © 2019 AppKrafting. All rights reserved.
//
import Foundation

struct APISearchResponse: Codable {
    let results: Results
}

struct Results: Codable {
    let albummatches: AlbumMatches?
    let artistmatches: ArtistMatches?
    let trackmatches: TrackMatches?
    
    
    enum CodingKeys: CodingKey {
        case artistmatches
        case albummatches
        case trackmatches
    }
}


struct ArtistMatches: Codable {
    let artist: [Artist]
}
struct AlbumMatches: Codable {
    let album: [Album]
}
struct TrackMatches: Codable {
    let track: [Track]
}









