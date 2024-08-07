//
//  PListManager.swift
//  EpisodesMVVM
//
//  Created by Patrick Moscova on 4/3/24.
//

import Foundation

struct PListManager {
    static func getAPIKey() -> String {
        guard  let path = Bundle.main.path(forResource: K.FileNames.keysPlist , ofType: "plist"),
                    let plistData = FileManager.default.contents(atPath: path) else {
            fatalError("\(K.FileNames.keysPlist).plist not found")
        }
        do{
            let  plistDecoder = PropertyListDecoder()
            let apiKeyData = try plistDecoder.decode([String:String].self, from: plistData)
            guard let apiKey = apiKeyData[K.pListKeys.apiKey] else {
                fatalError("APIKey not found Keys.plist")
            }
            return apiKey
        }catch {
            fatalError("\(error.localizedDescription)")
        }

    }
}
