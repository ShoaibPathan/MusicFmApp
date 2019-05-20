//
//  APISearchResponseTest.swift
//  MusicApp
//
//  Created by shohib mohammed pathan on 20/05/19.
//  Copyright © 2019 AppKrafting. All rights reserved.
//

import XCTest
@testable import Last_Fm_Search

class APISearchResponseTest: XCTestCase {
    
    var sut: URLSession!
    
    override func setUp() {
        super.setUp()
        sut = URLSession(configuration: URLSessionConfiguration.default)
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    private func getAlbumSearchMokeEndpoint() -> URL? {
        
        let baseURL = "https://ws.audioscrobbler.com/2.0/"
        let aPikey = "f98700e8190eb8926b4932815aef1dc1"
        guard var  urlComponents = URLComponents(string: baseURL) else {return nil}
        urlComponents.queryItems = [
            URLQueryItem(name: "method", value: "album.search"),
            URLQueryItem(name: "album", value: "stronger"),
            URLQueryItem(name: "api_key", value: aPikey),
            URLQueryItem(name: "format", value: "json")
        ]
       return urlComponents.url
    }
    private func getArtistSearchMokeEndpoint() -> URL? {
        
        let baseURL = "https://ws.audioscrobbler.com/2.0/"
        let aPikey = "f98700e8190eb8926b4932815aef1dc1"
        guard var  urlComponents = URLComponents(string: baseURL) else {return nil}
        urlComponents.queryItems = [
            URLQueryItem(name: "method", value: "artist.search"),
            URLQueryItem(name: "artist", value: "kanya west"),
            URLQueryItem(name: "api_key", value: aPikey),
            URLQueryItem(name: "format", value: "json")
        ]
        return urlComponents.url
    }
    private func getTrackSearchMokeEndpoint() -> URL? {
        
        let baseURL = "https://ws.audioscrobbler.com/2.0/"
        let aPikey = "f98700e8190eb8926b4932815aef1dc1"
        guard var  urlComponents = URLComponents(string: baseURL) else {return nil}
        urlComponents.queryItems = [
            URLQueryItem(name: "method", value: "track.search"),
            URLQueryItem(name: "track", value: "stronger"),
            URLQueryItem(name: "api_key", value: aPikey),
            URLQueryItem(name: "format", value: "json")
        ]
        return urlComponents.url
    }
    
    
   

    
    func testValidCallToArtistEndpoint() {
        
        let url = getArtistSearchMokeEndpoint()

        
        let promise = expectation(description: "Status code: 200")
        
       
        let dataTask = sut?.dataTask(with: url!) { data, response, error in
       
            if let error = error {
                XCTFail("Error: \(error.localizedDescription)")
                return
            } else if let statusCode = (response as? HTTPURLResponse)?.statusCode {
                if statusCode == 200 {
              
                    promise.fulfill()
                } else {
                    XCTFail("Status code: \(statusCode)")
                }
            }
        }
        dataTask?.resume()
 
        waitForExpectations(timeout: 10, handler: nil)
        
        
    }
    func testValidCallToAlbumEndpoint() {
        
        let url = getAlbumSearchMokeEndpoint()
        
        
        let promise = expectation(description: "Status code: 200")
        
        
        let dataTask = sut?.dataTask(with: url!) { data, response, error in
            
            if let error = error {
                XCTFail("Error: \(error.localizedDescription)")
                return
            } else if let statusCode = (response as? HTTPURLResponse)?.statusCode {
                if statusCode == 200 {
                    
                    promise.fulfill()
                } else {
                    XCTFail("Status code: \(statusCode)")
                }
            }
        }
        dataTask?.resume()
        
        waitForExpectations(timeout: 5, handler: nil)
        
        
    }
    func testValidCallToTrackEndpoint() {
        
        let url = getTrackSearchMokeEndpoint()
        
        
        let promise = expectation(description: "Status code: 200")
        
        
        let dataTask = sut?.dataTask(with: url!) { data, response, error in
            
            if let error = error {
                XCTFail("Error: \(error.localizedDescription)")
                return
            } else if let statusCode = (response as? HTTPURLResponse)?.statusCode {
                if statusCode == 200 {
                    
                    promise.fulfill()
                } else {
                    XCTFail("Status code: \(statusCode)")
                }
            }
        }
        dataTask?.resume()
        
        waitForExpectations(timeout: 5, handler: nil)
        
        
    }
}
