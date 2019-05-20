//
//  Albums.swift
//  MusicApp
//
//  Created by shohib mohammed pathan on 20/05/19.
//  Copyright © 2019 AppKrafting. All rights reserved.
//

struct Album: Codable {
    var name : String
    var artist: String
    var url: String
    var image: [Image]?
    var streamable: String?
    var mbid: String
    init(name: String,artist : String , mbid: String,url: String ,streamable: String? ,image: [Image]?) {
        self.name = name
        self.artist = artist
        self.mbid = mbid
        self.url = url
        self.streamable = streamable
        self.image = image
    }
}
struct Image: Codable {
    var text: String
    var size: Size
    
    enum CodingKeys: String, CodingKey {
        case text = "#text"
        case size
    }
}
enum Size: String, Codable {
    case extralarge = "extralarge"
    case large = "large"
    case medium = "medium"
    case mega = "mega"
    case small = "small"
}


