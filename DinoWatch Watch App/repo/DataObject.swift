//
//  DataObject.swift
//  DinoWatch Watch App
//
//  Created by Raptee Developer on 09/09/24.
//

import Foundation

struct Bookmark: Codable {
    let title: String
    let date: Date
    let pageURL: URL
    
    func encodeIt() -> Data {
        let data = try! PropertyListEncoder.init().encode(self)
        return data
    }
    
    static func decodeIt(_ data: Data) -> Bookmark {
        let bookmark = try! PropertyListDecoder.init().decode(Bookmark.self, from: data)
        return bookmark
    }
}
