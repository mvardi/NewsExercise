//
//  AppConfigurations.swift
//  NewsExercise
//
//  Created by Menahem  Vardi on 01/09/2022.
//

import Foundation

final class AppConfiguration {
    lazy var apiKey: String = {
        guard let apiKey = Bundle.main.object(forInfoDictionaryKey: "ApiKey") as? String else {
            fatalError("ApiKey is mandatory, please add it to info.plist")
        }
        return apiKey
    }()
    lazy var apiBaseURL: String = {
        guard let apiBaseURL = Bundle.main.object(forInfoDictionaryKey: "ApiBaseURL") as? String else {
            fatalError("ApiBaseURL is mandatory, please add it to info.plist")
        }
        return apiBaseURL
    }()
}

