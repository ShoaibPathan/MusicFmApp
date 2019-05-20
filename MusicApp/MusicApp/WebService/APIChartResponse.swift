//
//  APIChartResponse.swift
//  MusicApp
//
//  Created by shohib mohammed pathan on 20/05/19.
//  Copyright © 2019 AppKrafting. All rights reserved.
//

import Foundation


struct ArtistChart: Codable {
    let artists: Artists
}

struct Artists: Codable {
    let artist: [Artist]
    
    
    enum CodingKeys: CodingKey {
        case artist
        
    }
}


struct TracksChart: Codable {
    let tracks: Tracks
}

struct Tracks: Codable {
    let track: [Track]
    
    
    enum CodingKeys: CodingKey {
        case track
        
    }
}


